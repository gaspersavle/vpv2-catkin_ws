# CMake generated Testfile for 
# Source directory: /home/docker/catkin_ws/src/rospy_message_converter
# Build directory: /home/docker/catkin_ws/build/rospy_message_converter
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rospy_message_converter_nosetests_test.test_json_message_converter.py "/home/docker/catkin_ws/build/rospy_message_converter/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/docker/catkin_ws/build/rospy_message_converter/test_results/rospy_message_converter/nosetests-test.test_json_message_converter.py.xml" "--return-code" "\"/usr/local/lib/python3.8/dist-packages/cmake/data/bin/cmake\" -E make_directory /home/docker/catkin_ws/build/rospy_message_converter/test_results/rospy_message_converter" "/usr/bin/nosetests3 -P --process-timeout=60 /home/docker/catkin_ws/src/rospy_message_converter/test/test_json_message_converter.py --with-xunit --xunit-file=/home/docker/catkin_ws/build/rospy_message_converter/test_results/rospy_message_converter/nosetests-test.test_json_message_converter.py.xml")
set_tests_properties(_ctest_rospy_message_converter_nosetests_test.test_json_message_converter.py PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/docker/catkin_ws/src/rospy_message_converter/CMakeLists.txt;35;catkin_add_nosetests;/home/docker/catkin_ws/src/rospy_message_converter/CMakeLists.txt;0;")
add_test(_ctest_rospy_message_converter_nosetests_test.test_message_converter.py "/home/docker/catkin_ws/build/rospy_message_converter/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/docker/catkin_ws/build/rospy_message_converter/test_results/rospy_message_converter/nosetests-test.test_message_converter.py.xml" "--return-code" "\"/usr/local/lib/python3.8/dist-packages/cmake/data/bin/cmake\" -E make_directory /home/docker/catkin_ws/build/rospy_message_converter/test_results/rospy_message_converter" "/usr/bin/nosetests3 -P --process-timeout=60 /home/docker/catkin_ws/src/rospy_message_converter/test/test_message_converter.py --with-xunit --xunit-file=/home/docker/catkin_ws/build/rospy_message_converter/test_results/rospy_message_converter/nosetests-test.test_message_converter.py.xml")
set_tests_properties(_ctest_rospy_message_converter_nosetests_test.test_message_converter.py PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/docker/catkin_ws/src/rospy_message_converter/CMakeLists.txt;36;catkin_add_nosetests;/home/docker/catkin_ws/src/rospy_message_converter/CMakeLists.txt;0;")
subdirs("gtest")
