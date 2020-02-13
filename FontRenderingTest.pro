QT += quick
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

defineTest(compileFontFiles) {
    message("Creating rcc for font $$1")

    SFILE = $$PWD"/fonts/font.qrc"

    CONFIG(debug, debug|release) {
        win32: ODIR = $$OUT_PWD"/debug/fonts"
        !win32: ODIR = $$OUT_PWD"/bin/debug/fonts"
    } else {
        win32: ODIR = $$OUT_PWD"/release/fonts"
        !win32: ODIR = $$OUT_PWD"/bin/release/fonts"
    }

    OFILE = $$ODIR/$$1".rcc"

    win32:SFILE ~= s,/,\\,g
    win32:ODIR ~= s,/,\\,g
    win32:OFILE ~= s,/,\\,g

    win32: QMAKE_POST_LINK += $$QMAKE_CHK_DIR_EXISTS $$quote($$ODIR) $$QMAKE_MKDIR $$quote($$ODIR) $$escape_expand(\\n\\t)
    !win32: QMAKE_POST_LINK += $$QMAKE_MKDIR $$quote($$ODIR) $$escape_expand(\\n\\t)
    QMAKE_POST_LINK += rcc -binary $$quote($$SFILE) -o $$quote($$OFILE) $$escape_expand(\\n\\t)

    export(QMAKE_POST_LINK)
}

compileFontFiles("Roboto")
