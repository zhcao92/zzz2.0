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

echo_and_run cd "/home/qzl/Workspace/zzz2/src/planning/decision/lane_models"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/qzl/Workspace/zzz2/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/qzl/Workspace/zzz2/install/lib/python2.7/dist-packages:/home/qzl/Workspace/zzz2/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/qzl/Workspace/zzz2/build" \
    "/usr/bin/python2" \
    "/home/qzl/Workspace/zzz2/src/planning/decision/lane_models/setup.py" \
     \
    build --build-base "/home/qzl/Workspace/zzz2/build/planning/decision/lane_models" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/qzl/Workspace/zzz2/install" --install-scripts="/home/qzl/Workspace/zzz2/install/bin"
