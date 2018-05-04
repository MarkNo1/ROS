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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/mark/Project/TestingROS_Gui/src/qt_ros/qt_create"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/mark/Project/TestingROS_Gui/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/mark/Project/TestingROS_Gui/install/lib/python2.7/dist-packages:/home/mark/Project/TestingROS_Gui/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/mark/Project/TestingROS_Gui/build" \
    "/usr/bin/python" \
    "/home/mark/Project/TestingROS_Gui/src/qt_ros/qt_create/setup.py" \
    build --build-base "/home/mark/Project/TestingROS_Gui/build/qt_ros/qt_create" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/mark/Project/TestingROS_Gui/install" --install-scripts="/home/mark/Project/TestingROS_Gui/install/bin"
