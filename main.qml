import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    visible: true
    width: 800
    height: 480
    title: qsTr("Hello World")

    function generateLabel(length) {
        var result           = '';
        var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890@#$%^&(){}/><\\[]abcdefghklmnopqrstuvwxyz+=-_~|€ƒ‡©£®±¶Ææ»«¤™';
        var charactersLength = characters.length;
        for ( var i = 0; i < length; i++ ) {
            result += characters.charAt(Math.floor(Math.random() * charactersLength));
        }
        return result;
    }

    Label {
        id: label1
        text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
        font.pixelSize: 12
        anchors.top: parent.top
        anchors.left: parent.left
        font.family: "Roboto"

        Timer {
            id: textTimer1
            interval: 10000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: label1.text = generateLabel(100)
        }
    }

    Text {
        id: label2
        text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
        font.pixelSize: 22
        anchors.top: label1.bottom
        anchors.left: parent.left
        font.family: "Roboto"
        color: "red"

        Timer {
            id: textTimer2
            interval: 10000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: label2.text = generateLabel(60)
        }
    }

    Label {
        id: label3
        text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
        font.pixelSize: 32
        anchors.top: label2.bottom
        anchors.left: parent.left
        font.family: "Roboto"
        color: "blue"

        Timer {
            id: textTimer3
            interval: 10000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: label3.text = generateLabel(40)
        }
    }
    Text {
        id: label4
        text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
        font.pixelSize: 42
        anchors.top: label3.bottom
        anchors.left: parent.left
        font.family: "Roboto"
        color: "green"

        Timer {
            id: textTimer4
            interval: 10000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: label4.text = generateLabel(30)
        }
    }
    Label {
        id: label5
        text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
        font.pixelSize: 16
        font.bold: true
        anchors.top: label4.bottom
        anchors.left: parent.left
        font.family: "Roboto"

        Timer {
            id: textTimer5
            interval: 10000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: label5.text = generateLabel(70)
        }
    }

    Text {
        id: label6
        text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
        font.pixelSize: 14
        anchors.top: label5.bottom
        anchors.left: parent.left
        font.family: "Roboto"

        Timer {
            id: textTimer6
            interval: 10000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: label6.text = generateLabel(90)
        }
    }

    Label {
        id: label7
        text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
        font.pixelSize: 18
        anchors.top: label6.bottom
        anchors.left: parent.left
        font.family: "Roboto"
        color: "red"

        Timer {
            id: textTimer7
            interval: 10000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: label7.text = generateLabel(70)
        }
    }

    Text {
        id: label8
        text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
        font.pixelSize: 34
        anchors.top: label7.bottom
        anchors.left: parent.left
        font.family: "Roboto"
        color: "blue"

        Timer {
            id: textTimer8
            interval: 10000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: label8.text = generateLabel(35)
        }
    }
    Label {
        id: label9
        text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
        font.pixelSize: 44
        anchors.top: label8.bottom
        anchors.left: parent.left
        font.family: "Roboto"
        color: "green"

        Timer {
            id: textTimer9
            interval: 10000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: label9.text = generateLabel(25)
        }
    }
    Text {
        id: label10
        text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
        font.pixelSize: 20
        font.italic: true
        anchors.top: label9.bottom
        anchors.left: parent.left
        font.family: "Roboto"

        Timer {
            id: textTimer10
            interval: 10000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: label10.text = generateLabel(50)
        }
    }
    Button {
        id: btn1
        text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
        width: parent.width
        anchors.top: label10.bottom
        anchors.left: parent.left
        style: ButtonStyle {
            label: Label {
                text: btn1.text
                font.pixelSize: 22
                font.family: "Roboto"
                color: "green"
            }
        }

        Timer {
            id: textTimer11
            interval: 7000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: btn1.text = generateLabel(60)
        }
    }
    Rectangle {
        id: rect1
        anchors.top: btn1.bottom
        anchors.left: parent.left
        color: "grey"
        width: childrenRect.width
        height: childrenRect.height

        Text {
            id: rect1Text
            text: "ABCDEFGHIJKLMNOPQRST\nUVWXYZ1234567890!@#$%^&(){}?/><\n\\[]abcdefghklmnopqrstuvwxyz"
            font.pixelSize: 42
            font.family: "Roboto"
            color: "yellow"

            Timer {
                id: textTimer12
                interval: 3000
                repeat: true
                running: true
                triggeredOnStart: true
                onTriggered: rect1Text.text = generateLabel(30)
            }
        }
    }
}
