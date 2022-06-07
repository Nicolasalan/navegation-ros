# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "neo_srvs: 0 messages, 9 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(neo_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv" NAME_WE)
add_custom_target(_neo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "neo_srvs" "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv" ""
)

get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv" NAME_WE)
add_custom_target(_neo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "neo_srvs" "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv" ""
)

get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv" NAME_WE)
add_custom_target(_neo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "neo_srvs" "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv" ""
)

get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv" NAME_WE)
add_custom_target(_neo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "neo_srvs" "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv" ""
)

get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv" NAME_WE)
add_custom_target(_neo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "neo_srvs" "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv" ""
)

get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv" NAME_WE)
add_custom_target(_neo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "neo_srvs" "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv" ""
)

get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv" NAME_WE)
add_custom_target(_neo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "neo_srvs" "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv" ""
)

get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv" NAME_WE)
add_custom_target(_neo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "neo_srvs" "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv" ""
)

get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv" NAME_WE)
add_custom_target(_neo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "neo_srvs" "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs
)
_generate_srv_cpp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs
)
_generate_srv_cpp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs
)
_generate_srv_cpp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs
)
_generate_srv_cpp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs
)
_generate_srv_cpp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs
)
_generate_srv_cpp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs
)
_generate_srv_cpp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs
)
_generate_srv_cpp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs
)

### Generating Module File
_generate_module_cpp(neo_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(neo_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(neo_srvs_generate_messages neo_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_cpp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_cpp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_cpp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_cpp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_cpp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_cpp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_cpp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_cpp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_cpp _neo_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(neo_srvs_gencpp)
add_dependencies(neo_srvs_gencpp neo_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS neo_srvs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs
)
_generate_srv_eus(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs
)
_generate_srv_eus(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs
)
_generate_srv_eus(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs
)
_generate_srv_eus(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs
)
_generate_srv_eus(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs
)
_generate_srv_eus(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs
)
_generate_srv_eus(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs
)
_generate_srv_eus(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs
)

### Generating Module File
_generate_module_eus(neo_srvs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(neo_srvs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(neo_srvs_generate_messages neo_srvs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_eus _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_eus _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_eus _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_eus _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_eus _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_eus _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_eus _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_eus _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_eus _neo_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(neo_srvs_geneus)
add_dependencies(neo_srvs_geneus neo_srvs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS neo_srvs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs
)
_generate_srv_lisp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs
)
_generate_srv_lisp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs
)
_generate_srv_lisp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs
)
_generate_srv_lisp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs
)
_generate_srv_lisp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs
)
_generate_srv_lisp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs
)
_generate_srv_lisp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs
)
_generate_srv_lisp(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs
)

### Generating Module File
_generate_module_lisp(neo_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(neo_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(neo_srvs_generate_messages neo_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_lisp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_lisp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_lisp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_lisp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_lisp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_lisp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_lisp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_lisp _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_lisp _neo_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(neo_srvs_genlisp)
add_dependencies(neo_srvs_genlisp neo_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS neo_srvs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs
)
_generate_srv_nodejs(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs
)
_generate_srv_nodejs(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs
)
_generate_srv_nodejs(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs
)
_generate_srv_nodejs(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs
)
_generate_srv_nodejs(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs
)
_generate_srv_nodejs(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs
)
_generate_srv_nodejs(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs
)
_generate_srv_nodejs(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs
)

### Generating Module File
_generate_module_nodejs(neo_srvs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(neo_srvs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(neo_srvs_generate_messages neo_srvs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_nodejs _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_nodejs _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_nodejs _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_nodejs _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_nodejs _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_nodejs _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_nodejs _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_nodejs _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_nodejs _neo_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(neo_srvs_gennodejs)
add_dependencies(neo_srvs_gennodejs neo_srvs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS neo_srvs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs
)
_generate_srv_py(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs
)
_generate_srv_py(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs
)
_generate_srv_py(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs
)
_generate_srv_py(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs
)
_generate_srv_py(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs
)
_generate_srv_py(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs
)
_generate_srv_py(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs
)
_generate_srv_py(neo_srvs
  "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs
)

### Generating Module File
_generate_module_py(neo_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(neo_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(neo_srvs_generate_messages neo_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetRelay.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_py _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/IOBoardSetDigOut.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_py _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetLCDMsg.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_py _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/LockPlatform.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_py _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/UnlockPlatform.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_py _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ResetOmniWheels.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_py _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardSetEMStop.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_py _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/RelayBoardUnSetEMStop.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_py _neo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/miguelito/workspace/navegation-warehouse/catkin_ws/src/neo_srvs/srv/ActivateMotors.srv" NAME_WE)
add_dependencies(neo_srvs_generate_messages_py _neo_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(neo_srvs_genpy)
add_dependencies(neo_srvs_genpy neo_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS neo_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/neo_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/neo_srvs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/neo_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/neo_srvs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/neo_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
