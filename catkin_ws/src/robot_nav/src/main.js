let vueApp = new Vue({
    el: "#vueApp",
    data: {
      // ros connection
      ros: null,
      rosbridge_address: 'wss://i-06e2e0110e3c0f3a6.robotigniteacademy.com/c4780f5d-51ad-4846-829e-22d7f79641a2/rosbridge/',
      connected: false,
      // page content
      menu_title: 'Connection',
      loading: false,
      port: '9090',
      mapViewer: null,
      mapGridClient: null,
      interval: null,
      position: { x: 0, y: 0, z: 0, },
      // dragging data
      dragging: false,
      x: 'no',
      y: 'no',
      dragCircleStyle: {
        margin: '0px',
        top: '0px',
        left: '0px',
        display: 'none',
        width: '75px',
        height: '75px',
      },
      // services
      service_busy: false,
      service_response: '',
      // joystick valules
      joystick: {
        vertical: 0,
        horizontal: 0,
      },
      // publisher
      pubInterval: null,
    },
    methods: {
      connect: function() {
        // define ROSBridge connection object
        this.ros = new ROSLIB.Ros({
          url: this.rosbridge_address
        })
  
        // define callbacks
        this.ros.on('connection', () => {
          this.connected = true
          this.loading = false
          console.log('Connection to ROSBridge established!')
          let topic = new ROSLIB.Topic({
            ros: this.ros,
            name: '/odom',
            messageType: 'nav_msgs/Odometry'
          })
          topic.subscribe((message) => {
            this.position = message.pose.pose.position
            console.log(message)
          })
          this.pubInterval = setInterval(this.publish, 100)
  
          this.mapViewer = new ROS2D.Viewer({
            divID: 'map',
            width: 420,
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
          console.log('Something went wrong when trying to connect')
          console.log(error)
        })
        this.ros.on('close', () => {
          this.connected = false
          console.log('Connection to ROSBridge was closed!')
          clearInterval(this.pubInterval)
          this.loading = false
          document.getElementById('map').innerHTML = ''
        })
      },
      publish: function() {
        let topic = new ROSLIB.Topic({
          ros: this.ros,
          name: '/cmd_vel',
          messageType: 'geometry_msgs/Twist'
        })
        let message = new ROSLIB.Message({
          linear: { x: this.joystick.vertical, y: 0, z: 0, },
          angular: { x: 0, y: 0, z: this.joystick.horizontal, },
        })
        topic.publish(message)
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
      startDrag() {
        this.dragging = true
        this.x = this.y = 0
      },
      stopDrag() {
        this.dragging = false
        this.x = this.y = 'no'
        this.dragCircleStyle.display = 'none'
        this.resetJoystickVals()
      },
      doDrag(event) {
        if (this.dragging) {
          this.x = event.offsetX
          this.y = event.offsetY
          let ref = document.getElementById('dragstartzone')
          this.dragCircleStyle.display = 'inline-block'
  
          let minTop = ref.offsetTop - parseInt(this.dragCircleStyle.height) / 2
          let maxTop = minTop + 200
          let top = this.y + minTop
          this.dragCircleStyle.top = `${top}px`
  
          let minLeft = ref.offsetLeft - parseInt(this.dragCircleStyle.width) / 2
          let maxLeft = minLeft + 200
          let left = this.x + minLeft
          this.dragCircleStyle.left = `${left}px`
  
          this.setJoystickVals()
        }
      },
      setJoystickVals() {
        this.joystick.vertical = -1 * ((this.y / 200) - 0.5)
        this.joystick.horizontal = +1 * ((this.x / 200) - 0.5)
      },
      resetJoystickVals() {
        this.joystick.vertical = 0
        this.joystick.horizontal = 0
      },
      MoveGoal: function() {
        // define page as busy
        this.service_busy = true
        // define the service to be called
        let service = new ROSLIB.Service({
          ros: this.ros,
          name: '/move_robot',
          serviceType: 'robot_nav/goal',
        })
  
        // define the request
        let request = new ROSLIB.ServiceRequest({
          goal: '',
        })
  
        // call service and define a callback
        service.callService(request, (result) => {
          this.service_busy = false
          console.log(result)
        }, (error) => {
          this.service_busy = false
          console.error(error)
        })
      },
    },
    mounted() {
      // page is ready
      window.addEventListener('mouseup', this.stopDrag)
    },
  })