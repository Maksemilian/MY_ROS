SOURCES += \
    src/talker.cpp \
    src/listener.cpp

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../../../opt/ros/kinetic/lib/release/ -lroscpp
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../../../opt/ros/kinetic/lib/debug/ -lroscpp
else:unix: LIBS += -L$$PWD/../../../../../../opt/ros/kinetic/lib/ -lroscpp

INCLUDEPATH += $$PWD/../../../../../../opt/ros/kinetic/include
DEPENDPATH += $$PWD/../../../../../../opt/ros/kinetic/include
