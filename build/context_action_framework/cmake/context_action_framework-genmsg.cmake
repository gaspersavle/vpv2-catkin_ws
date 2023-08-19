# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "context_action_framework: 18 messages, 2 services")

set(MSG_I_FLAGS "-Icontext_action_framework:/home/docker/catkin_ws/src/context_action_framework/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Icontext_action_framework:/home/docker/catkin_ws/src/context_action_framework/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(context_action_framework_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg" "geometry_msgs/Transform:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg" "std_msgs/Header:context_action_framework/Detection:geometry_msgs/Vector3:geometry_msgs/Transform:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg" "geometry_msgs/Transform:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg" "std_msgs/Header:geometry_msgs/Vector3:context_action_framework/Gap:geometry_msgs/Transform:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg" "geometry_msgs/Transform:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg" "geometry_msgs/Transform:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg" "geometry_msgs/Transform:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg" "geometry_msgs/Transform:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg" "geometry_msgs/Transform:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg" ""
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg" "geometry_msgs/Transform:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg" ""
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg" ""
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg" ""
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg" ""
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg" ""
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg" ""
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg" "std_msgs/Header:context_action_framework/Detection:geometry_msgs/Vector3:context_action_framework/Gap:geometry_msgs/Transform:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv" ""
)

get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv" NAME_WE)
add_custom_target(_context_action_framework_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "context_action_framework" "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv" "std_msgs/Header:context_action_framework/Detection:sensor_msgs/Image:geometry_msgs/Vector3:context_action_framework/Gap:geometry_msgs/Transform:geometry_msgs/Quaternion:context_action_framework/VisionDetails"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_msg_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)

### Generating Services
_generate_srv_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)
_generate_srv_cpp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
)

### Generating Module File
_generate_module_cpp(context_action_framework
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(context_action_framework_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(context_action_framework_generate_messages context_action_framework_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv" NAME_WE)
add_dependencies(context_action_framework_generate_messages_cpp _context_action_framework_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(context_action_framework_gencpp)
add_dependencies(context_action_framework_gencpp context_action_framework_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS context_action_framework_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_msg_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)

### Generating Services
_generate_srv_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)
_generate_srv_eus(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
)

### Generating Module File
_generate_module_eus(context_action_framework
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(context_action_framework_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(context_action_framework_generate_messages context_action_framework_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv" NAME_WE)
add_dependencies(context_action_framework_generate_messages_eus _context_action_framework_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(context_action_framework_geneus)
add_dependencies(context_action_framework_geneus context_action_framework_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS context_action_framework_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_msg_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)

### Generating Services
_generate_srv_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)
_generate_srv_lisp(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
)

### Generating Module File
_generate_module_lisp(context_action_framework
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(context_action_framework_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(context_action_framework_generate_messages context_action_framework_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv" NAME_WE)
add_dependencies(context_action_framework_generate_messages_lisp _context_action_framework_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(context_action_framework_genlisp)
add_dependencies(context_action_framework_genlisp context_action_framework_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS context_action_framework_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_msg_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)

### Generating Services
_generate_srv_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)
_generate_srv_nodejs(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
)

### Generating Module File
_generate_module_nodejs(context_action_framework
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(context_action_framework_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(context_action_framework_generate_messages context_action_framework_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv" NAME_WE)
add_dependencies(context_action_framework_generate_messages_nodejs _context_action_framework_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(context_action_framework_gennodejs)
add_dependencies(context_action_framework_gennodejs context_action_framework_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS context_action_framework_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_msg_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)

### Generating Services
_generate_srv_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)
_generate_srv_py(context_action_framework
  "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
)

### Generating Module File
_generate_module_py(context_action_framework
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(context_action_framework_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(context_action_framework_generate_messages context_action_framework_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detection.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Detections.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gap.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/Gaps.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionBlock.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/CutDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/LeverDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/MoveDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/PushDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/TurnOverDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/ViceDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/msg/VisionDetails.msg" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/NextAction.srv" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/docker/catkin_ws/src/context_action_framework/srv/VisionDetection.srv" NAME_WE)
add_dependencies(context_action_framework_generate_messages_py _context_action_framework_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(context_action_framework_genpy)
add_dependencies(context_action_framework_genpy context_action_framework_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS context_action_framework_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/context_action_framework
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(context_action_framework_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(context_action_framework_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(context_action_framework_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET context_action_framework_generate_messages_cpp)
  add_dependencies(context_action_framework_generate_messages_cpp context_action_framework_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/context_action_framework
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(context_action_framework_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(context_action_framework_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(context_action_framework_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET context_action_framework_generate_messages_eus)
  add_dependencies(context_action_framework_generate_messages_eus context_action_framework_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/context_action_framework
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(context_action_framework_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(context_action_framework_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(context_action_framework_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET context_action_framework_generate_messages_lisp)
  add_dependencies(context_action_framework_generate_messages_lisp context_action_framework_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/context_action_framework
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(context_action_framework_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(context_action_framework_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(context_action_framework_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET context_action_framework_generate_messages_nodejs)
  add_dependencies(context_action_framework_generate_messages_nodejs context_action_framework_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/context_action_framework
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(context_action_framework_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(context_action_framework_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(context_action_framework_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET context_action_framework_generate_messages_py)
  add_dependencies(context_action_framework_generate_messages_py context_action_framework_generate_messages_py)
endif()
