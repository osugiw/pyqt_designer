

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import Constants

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height
    color: "#2a2a2a"
    property int bpmValue: 0
    property bool heartVisible: true

    Text {
        color: "#ffffff"
        text: qsTr("Hello MCUDemo")
        anchors.verticalCenterOffset: -156
        anchors.horizontalCenterOffset: 1
        font.pointSize: 50
        anchors.centerIn: parent
    }

    Text {
        id: iconHeart
        x: 87
        y: 162
        width: 241
        height: 221
        visible: root.heartVisible
        color: "#ffffff"
        text: qsTr("❤️")
        font.pixelSize: 200
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Item {
        id: item1
        x: 357
        y: 183
        width: 203
        height: 223

        Text {
            id: textBpmValue
            height: 133
            visible: true
            color: "#ffffff"
            text: qsTr("0")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            font.pixelSize: 100
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 17
        }

        Text {
            id: textBpmLabel
            y: 156
            color: "#ffffff"
            text: qsTr("BPM")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            font.pixelSize: 50
            anchors.rightMargin: 46
            anchors.leftMargin: 46
            anchors.bottomMargin: 0
            font.bold: true
        }
    }
}
