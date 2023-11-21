import QtQuick 6.5
import QtQuick.Controls 6.5

Rectangle {
    id: mainViewRectangle
    width: 1174
    height: 660
    color: "#b9b9b9"
    radius: 10
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: parent.left
    state: "Default"
    anchors.leftMargin: 100

    Image {
        id: image
        anchors.fill: parent
        source: "c:/Users/KDS-LTP-0415/Downloads/Solid_grey.svg.png"
        layer.enabled: false
        autoTransform: false
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        fillMode: Image.PreserveAspectFit

        Image {
            id: suitImage
            x: 122
            y: 204
            width: 100
            height: 100
            source: "c:/Users/KDS-LTP-0415/Downloads/Solid_grey.svg.png"
            rotation: rotationSlider.value
            scale: zoomSlider.value
            fillMode: Image.PreserveAspectFit

            Image {
                id: alienImage
                x: 23
                y: 0
                width: 55
                height: 55
                visible: alienRadioButton.checked
                source: "images/alien.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: catImage
                x: 28
                y: -9
                width: 55
                height: 55
                visible: catRadioButton.checked
                source: "images/cat.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: glassesImage
                x: 28
                y: -7
                width: 47
                height: 53
                visible: glassesSwitch.checked
                source: "images/sunglasses.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Item {
            id: viewCharacterItem
            width: 418
            height: 67
            opacity: 1
            visible: lagoonRoundButton.checked || spaceRoundButton.checked
            anchors.left: parent.left
            anchors.top: parent.top
            layer.textureSize.width: 0
            anchors.leftMargin: 10
            anchors.topMargin: 10

            Slider {
                id: zoomSlider
                y: 18
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                layer.format: ShaderEffectSource.Alpha
                anchors.leftMargin: 5
                anchors.bottomMargin: 5
                to: 2
                value: 1
            }

            Slider {
                id: rotationSlider
                x: 211
                y: 18
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin: 5
                anchors.bottomMargin: 5
                value: 0
                to: 360
                from: -360
            }

            Text {
                id: text1
                color: "#ffffff"
                text: qsTr("Zoom Character")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 15
                anchors.leftMargin: 10
                anchors.topMargin: 5
            }

            Text {
                id: text2
                x: 219
                color: "#ffffff"
                text: qsTr("Rotate Character")
                anchors.right: parent.right
                anchors.top: parent.top
                font.pixelSize: 15
                anchors.rightMargin: 90
                anchors.topMargin: 5
            }
        }
    }
    states: [
        State {
            name: "Lagoon"
            when: lagoonRoundButton.checked

            PropertyChanges {
                target: image
                source: "images/lagoon.jpg"
            }

            PropertyChanges {
                target: suitImage
                x: 162
                y: 211
                width: 245
                height: 245
                source: "images/diver.png"
            }

            PropertyChanges {
                target: alienImage
                x: 85
                y: 22
                width: 55
                height: 55
            }

            PropertyChanges {
                target: catImage
                x: 85
                y: 14
            }

            PropertyChanges {
                target: glassesImage
                x: 85
                y: 16
                width: 47
                height: 53
            }

            PropertyChanges {
                target: mainViewRectangle
                height: 660
            }
        },
        State {
            name: "Space"
            when: spaceRoundButton.checked

            PropertyChanges {
                target: image
                source: "images/planet.png"
            }

            PropertyChanges {
                target: suitImage
                x: 270
                y: 337
                width: 250
                height: 250
                source: "images/spacesuit.png"
            }

            PropertyChanges {
                target: alienImage
                x: 85
                y: 17
            }

            PropertyChanges {
                target: catImage
                x: 88
                y: 8
            }

            PropertyChanges {
                target: glassesImage
                x: 90
                y: 10
                width: 44
                height: 53
            }
        },
        State {
            name: "Default"
            when: !lagoonRoundButton.checked && spaceRoundButton.checked

            PropertyChanges {
                target: mainViewRectangle
                color: "#b9b9b9"
            }

            PropertyChanges {
                target: image
                source: "c:/Users/KDS-LTP-0415/Downloads/Solid_grey.svg.png"
            }
        }
    ]
}
