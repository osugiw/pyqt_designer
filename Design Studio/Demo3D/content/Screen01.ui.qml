/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import Demo3D
import Quick3DAssets.Orbiter_Space_Shuttle_OV_103_Discovery_150k_4096
import QtQuick.Timeline 1.0

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    View3D {
        id: view3D
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 8
        anchors.leftMargin: 0
        anchors.topMargin: -8

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: 110.007
                y: 67.258
                eulerRotation.z: -3.39879
                eulerRotation.y: 13.37842
                eulerRotation.x: -0.1161
                castsShadow: true
                brightness: 2.26
                z: 283.1673
            }

            PerspectiveCamera {
                id: sceneCamera
                x: 78.063
                y: 95.631
                eulerRotation.y: 48.25848
                eulerRotation.x: -0.00001
                eulerRotation.z: 0.00002
                z: 202.19441
            }

            Orbiter_Space_Shuttle_OV_103_Discovery_150k_4096 {
                id: plane
                x: 0.6
                y: 51.934
                eulerRotation.y: rotateAxisYSlider.value
                eulerRotation.x: rotateAxisXSlider.value
                eulerRotation.z: 0.11695
                z: -2.40178
            }

            Model {
                id: cube
                x: 7.02
                y: 155.765
                source: "#Cube"
                scale.z: 1
                scale.y: 3.16827
                scale.x: 4.46391
                z: -254.71371
                materials: defaultMaterial
            }
        }

        Item {
            id: rotateObjectItem
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 1452
            anchors.bottomMargin: 868
            anchors.leftMargin: 48
            anchors.topMargin: 82

            Slider {
                id: rotateAxisXSlider
                x: 163
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 20
                anchors.topMargin: 20
                value: 0.5
                to: 180
                from: -180
            }

            Text {
                id: text1
                text: qsTr("X Rotate")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 30
                anchors.leftMargin: 20
                anchors.topMargin: 20
            }

            Slider {
                id: rotateAxisYSlider
                x: 163
                y: 85
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin: 20
                anchors.bottomMargin: 20
                value: 0.5
                to: 180
                from: -180
            }

            Text {
                id: text5
                x: 119
                y: -36
                text: qsTr("Rotate Object")
                font.pixelSize: 30
            }

            Text {
                id: text2
                y: 85
                text: qsTr("Y Rotate")
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                font.pixelSize: 30
                anchors.leftMargin: 20
                anchors.bottomMargin: 20
            }

        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: true
                loops: 1
                duration: 1000
                to: 1000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 1000
        enabled: true

        KeyframeGroup {
            target: sceneCamera
            property: "x"
            Keyframe {
                value: 281.05298
                frame: 999
            }
        }
    }
}
