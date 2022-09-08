var app = new Vue({
    el: '#app',
    // storing the state of the page
    data: {
        // ros connection
        connected: false,
        rosbridge_address: 'wss://i-06c7fc330376c8a8f.robotigniteacademy.com/c08449ac-e515-4199-9d57-19dc073245ea/rosbridge/',
        ros: null,
        // subscriber data
        position: { x: 0, y: 0, z: 0, },
        // fence mode
        fenceMode: false,
        insideFence: false,
        logs: [],
        loading: false,
        port: '9090',
        mapViewer: null,
        mapGridClient: null,
        interval: null,
        menu_title: 'Connection',
        main_title: 'Main title, from Vue!!',
    },
    // helper methods to connect to ROS
    methods: {
        connect: function() {
            this.loading = true
            this.ros = new ROSLIB.Ros({
                url: this.rosbridge_address
            })
            this.ros.on('connection', () => {
                this.logs.unshift((new Date()).toTimeString() + ' - Connected!')
                this.connected = true
                this.loading = false

                this.mapViewer = new ROS2D.Viewer({
                    divID: 'map',
                    width: 460,
                    height: 360
                })

                // Setup the map client.
                this.mapGridClient = new ROS2D.OccupancyGridClient({
                    ros: this.ros,
                    rootObject: this.mapViewer.scene,
                    continuous: true,
                })
                // Scale the canvas to fit to the map
                this.mapGridClient.on('change', () => {
                    this.mapViewer.scaleToDimensions(this.mapGridClient.currentGrid.width, this.mapGridClient.currentGrid.height);
                    this.mapViewer.shift(this.mapGridClient.currentGrid.pose.position.x, this.mapGridClient.currentGrid.pose.position.y)
                })

            })
            this.ros.on('error', (error) => {
                this.logs.unshift((new Date()).toTimeString() + ` - Error: ${error}`)
            })
            this.ros.on('close', () => {
                this.logs.unshift((new Date()).toTimeString() + ' - Disconnected!')
                this.connected = false
                this.loading = false
                document.getElementById('map').innerHTML = ''
            })
            // define callbacks
            this.ros.on('connection', () => {
                this.connected = true
                console.log('Connection to ROSBridge established!')
                let topic = new ROSLIB.Topic({
                    ros: this.ros,
                    name: '/odom',
                    messageType: 'nav_msgs/Odometry'
                })
                topic.subscribe((message) => {
                this.position = message.pose.pose.position
                console.log(`fence mode is ${this.fenceMode}`)
                if (this.fenceMode) {
                    this.stayOnTheFence(message.pose.pose.position)
                }
                })
            })
            this.ros.on('error', (error) => {
                console.log('Something went wrong when trying to connect')
                console.log(error)
            })
            this.ros.on('close', () => {
                this.connected = false
                console.log('Connection to ROSBridge was closed!')
            })
        },
        disconnect: function() {
            this.ros.close()
        },
        sendCommand: function() {
            let topic = new ROSLIB.Topic({
                ros: this.ros,
                name: '/cmd_vel',
                messageType: 'geometry_msgs/Twist'
            })
            let message = new ROSLIB.Message({
                linear: { x: 1, y: 0, z: 0, },
                angular: { x: 0, y: 0, z: 0.5, },
            })
            topic.publish(message)
        },
        turnRight: function() {
            let topic = new ROSLIB.Topic({
            ros: this.ros,
            name: '/cmd_vel',
            messageType: 'geometry_msgs/Twist'
            })
            let message = new ROSLIB.Message({
                linear: { x: 1, y: 0, z: 0, },
                angular: { x: 0, y: 0, z: -0.5, },
            })
            topic.publish(message)
        },
        stop: function() {
            let topic = new ROSLIB.Topic({
                ros: this.ros,
                name: '/cmd_vel',
                messageType: 'geometry_msgs/Twist'
            })
            let message = new ROSLIB.Message({
                linear: { x: 0, y: 0, z: 0, },
                angular: { x: 0, y: 0, z: 0, },
            })
            topic.publish(message)
        },
        switchFenceMode: function() {
            this.fenceMode = !this.fenceMode
        },
        stayOnTheFence: function(position) {
            let topicToPublish = new ROSLIB.Topic({
                ros: this.ros,
                name: '/cmd_vel',
                messageType: 'geometry_msgs/Twist'
            })
            if (position.x > -5 && position.x < 5 && position.y > -5 && position.y < 5) {
                // we are inside the fence!
                this.insideFence = true
                let message = new ROSLIB.Message({
                    linear: { x: 0.5, y: 0, z: 0, },
                    angular: { x: 0, y: 0, z: 0, },
                })
                topicToPublish.publish(message)
            } else {
                // we are outside the fence!
                this.insideFence = false
                let message = new ROSLIB.Message({
                    linear: { x: 0.5, y: 0, z: 0, },
                    angular: { x: 0, y: 0, z: 0.5, },
                })
                topicToPublish.publish(message)
            }
        },
    },
    disconnect: function() {
        this.ros.close()
    },
    mounted() { // quando a pagina estiver montada, conecte-se ao ROS
        this.interval = setInterval(() => { // atualize a lista de logs a cada 1 segundo
            if (this.ros != null && this.ros.isConnected) { // se estiver conectado, atualize a lista de logs
                this.ros.getNodes((data) => { }, (error) => { }) // faz uma requisição para o ROS para atualizar a lista de logs
            }
        }, 10000) // atualize a lista de logs a cada 10 segundos
    },
})