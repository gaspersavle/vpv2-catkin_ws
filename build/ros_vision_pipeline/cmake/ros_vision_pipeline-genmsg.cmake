# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_vision_pipeline: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iros_vision_pipeline:/home/docker/catkin_ws/src/ros_vision_pipeline/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_vision_pipeline_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg" NAME_WE)
add_custom_target(_ros_vision_pipeline_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vision_pipeline" "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv" NAME_WE)
add_custom_target(_ros_vision_pipeline_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vision_pipeline" "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_vision_pipeline
  "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vision_pipeline
)

### Generating Services
_generate_srv_cpp(ros_vision_pipeline
  "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vision_pipeline
)

### Generating Module File
_generate_module_cpp(ros_vision_pipeline
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vision_pipeline
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_vision_pipeline_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_vision_pipeline_generate_messages ros_vision_pipeline_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg" NAME_WE)
add_dependencies(ros_vision_pipeline_generate_messages_cpp _ros_vision_pipeline_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv" NAME_WE)
add_dependencies(ros_vision_pipeline_generate_messages_cpp _ros_vision_pipeline_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_vision_pipeline_gencpp)
add_dependencies(ros_vision_pipeline_gencpp ros_vision_pipeline_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_vision_pipeline_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ros_vision_pipeline
  "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_vision_pipeline
)

### Generating Services
_generate_srv_eus(ros_vision_pipeline
  "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_vision_pipeline
)

### Generating Module File
_generate_module_eus(ros_vision_pipeline
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_vision_pipeline
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_vision_pipeline_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_vision_pipeline_generate_messages ros_vision_pipeline_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg" NAME_WE)
add_dependencies(ros_vision_pipeline_generate_messages_eus _ros_vision_pipeline_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv" NAME_WE)
add_dependencies(ros_vision_pipeline_generate_messages_eus _ros_vision_pipeline_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_vision_pipeline_geneus)
add_dependencies(ros_vision_pipeline_geneus ros_vision_pipeline_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_vision_pipeline_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_vision_pipeline
  "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vision_pipeline
)

### Generating Services
_generate_srv_lisp(ros_vision_pipeline
  "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vision_pipeline
)

### Generating Module File
_generate_module_lisp(ros_vision_pipeline
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vision_pipeline
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_vision_pipeline_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_vision_pipeline_generate_messages ros_vision_pipeline_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg" NAME_WE)
add_dependencies(ros_vision_pipeline_generate_messages_lisp _ros_vision_pipeline_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv" NAME_WE)
add_dependencies(ros_vision_pipeline_generate_messages_lisp _ros_vision_pipeline_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_vision_pipeline_genlisp)
add_dependencies(ros_vision_pipeline_genlisp ros_vision_pipeline_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_vision_pipeline_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ros_vision_pipeline
  "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_vision_pipeline
)

### Generating Services
_generate_srv_nodejs(ros_vision_pipeline
  "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_vision_pipeline
)

### Generating Module File
_generate_module_nodejs(ros_vision_pipeline
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_vision_pipeline
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_vision_pipeline_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_vision_pipeline_generate_messages ros_vision_pipeline_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg" NAME_WE)
add_dependencies(ros_vision_pipeline_generate_messages_nodejs _ros_vision_pipeline_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv" NAME_WE)
add_dependencies(ros_vision_pipeline_generate_messages_nodejs _ros_vision_pipeline_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_vision_pipeline_gennodejs)
add_dependencies(ros_vision_pipeline_gennodejs ros_vision_pipeline_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_vision_pipeline_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_vision_pipeline
  "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vision_pipeline
)

### Generating Services
_generate_srv_py(ros_vision_pipeline
  "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vision_pipeline
)

### Generating Module File
_generate_module_py(ros_vision_pipeline
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vision_pipeline
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_vision_pipeline_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_vision_pipeline_generate_messages ros_vision_pipeline_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/msg/ColourDepth.msg" NAME_WE)
add_dependencies(ros_vision_pipeline_generate_messages_py _ros_vision_pipeline_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/ros_vision_pipeline/srv/Detection.srv" NAME_WE)
add_dependencies(ros_vision_pipeline_generate_messages_py _ros_vision_pipeline_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_vision_pipeline_genpy)
add_dependencies(ros_vision_pipeline_genpy ros_vision_pipeline_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_vision_pipeline_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vision_pipeline)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vision_pipeline
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_vision_pipeline_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ros_vision_pipeline_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_vision_pipeline)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_vision_pipeline
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_vision_pipeline_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(ros_vision_pipeline_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vision_pipeline)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vision_pipeline
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_vision_pipeline_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ros_vision_pipeline_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_vision_pipeline)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_vision_pipeline
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_vision_pipeline_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(ros_vision_pipeline_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vision_pipeline)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vision_pipeline\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vision_pipeline
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_vision_pipeline_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ros_vision_pipeline_generate_messages_py sensor_msgs_generate_messages_py)
endif()
