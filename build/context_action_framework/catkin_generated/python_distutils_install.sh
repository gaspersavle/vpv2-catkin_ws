#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/docker/catkin_ws/src/context_action_framework"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/docker/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/docker/catkin_ws/install/lib/python3/dist-packages:/home/docker/catkin_ws/build/context_action_framework/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/docker/catkin_ws/build/context_action_framework" \
    "/usr/bin/python3" \
    "/home/docker/catkin_ws/src/context_action_framework/setup.py" \
     \
    build --build-base "/home/docker/catkin_ws/build/context_action_framework" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/docker/catkin_ws/install" --install-scripts="/home/docker/catkin_ws/install/bin"
