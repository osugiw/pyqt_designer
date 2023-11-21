

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import Graphic2D

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#ffffff"

    MyMainViewRectangle {
        id: mainViewRectangle
    }

    Item {
        id: roundButtonItem
        x: 1301
        y: 172
        width: 527
        height: 109

        RoundButton {
            id: lagoonRoundButton
            width: 220
            height: 57
            text: "Lagoon"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            icon.width: 30
            autoExclusive: true
            checkable: true
            anchors.leftMargin: 20
            anchors.verticalCenterOffset: 5
            font.bold: false
            font.pointSize: 20
        }

        RoundButton {
            id: spaceRoundButton
            x: 237
            width: 220
            height: 57
            text: "Space"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            autoExclusive: true
            checkable: true
            icon.width: 30
            anchors.rightMargin: 20
            anchors.verticalCenterOffset: 5
            font.pointSize: 20
            font.bold: false
        }
    }

    Item {
        id: radioButtonItem
        x: 1325
        y: 295
        width: 479
        height: 306
        visible: lagoonRoundButton.checked || spaceRoundButton.checked

        RadioButton {
            id: alienRadioButton
            x: 148
            width: 183
            height: 40
            visible: true
            text: qsTr("Alien")
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 120
            anchors.topMargin: 35
            font.pointSize: 20
        }

        RadioButton {
            id: catRadioButton
            x: 148
            y: 176
            width: 183
            height: 40
            visible: true
            text: qsTr("Cat")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 120
            anchors.bottomMargin: 35
            font.pointSize: 20
        }

        Image {
            id: alienPreviewImage
            width: 100
            height: 100
            anchors.left: parent.left
            anchors.top: parent.top
            source: "images/alien.png"
            anchors.leftMargin: 20
            anchors.topMargin: 20
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: catPreviewImage
            y: 165
            width: 100
            height: 100
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            source: "images/cat.png"
            anchors.leftMargin: 20
            anchors.bottomMargin: 20
            fillMode: Image.PreserveAspectFit
        }
    }

    Item {
        id: glassesItem
        x: 1336
        y: 746
        width: 492
        height: 124
        visible: catRadioButton.checked || alienRadioButton.checked

        Switch {
            id: glassesSwitch
            x: 153
            y: 57
            text: qsTr("Sunglasses")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 55
            anchors.rightMargin: 45
            font.pointSize: 20
        }

        Image {
            id: glassesPreviewImage
            y: 43
            width: 100
            height: 100
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            source: "images/sunglasses.png"
            anchors.bottomMargin: 30
            anchors.leftMargin: 35
            fillMode: Image.PreserveAspectFit
        }
    }

    states: [
        State {
            name: "clicked"
        }
    ]
}
