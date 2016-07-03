import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Window 2.0
import QtQuick.Layouts 1.1
import Qt.labs.settings 1.0
import "components"

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: 320
    height: 350
    x: 200
    y: 200
    title: qsTr("CrosshairMenu")
    Column {
        width: parent.width-20
        height: parent.height-20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10
        Column {
            width: parent.width
            Text {
                width: parent.width
                color: "#5e5e5e"
                text: "Size"
                font.pointSize: 12
                horizontalAlignment: Text.AlignHCenter
            }
            Slider {
                id: sizeSlider
                width: parent.width
                maximumValue: 30
                minimumValue: 5
                value: 18
            }
        }
        Column {
            width: parent.width
            Text {
                width: parent.width
                color: "#5e5e5e"
                text: "Radius"
                font.pointSize: 12
                horizontalAlignment: Text.AlignHCenter
            }
            Slider {
                id: radiusSlider
                maximumValue: 15
                minimumValue: 0
                width: parent.width
                value: 5
            }
        }
        Column {
            width: parent.width
            Text {
                width: parent.width
                color: "#5e5e5e"
                text: "Red"
                font.pointSize: 12
                horizontalAlignment: Text.AlignHCenter
            }
            Slider {
                id: rSlider
                maximumValue: 1
                minimumValue: 0
                value: 0.41
                width: parent.width
            }
        }
        Column {
            width: parent.width
            Text {
                width: parent.width
                color: "#5e5e5e"
                text: "Green"
                font.pointSize: 12
                horizontalAlignment: Text.AlignHCenter
            }
            Slider {
                id: gSlider
                maximumValue: 1
                minimumValue: 0
                value: 0.8
                width: parent.width
            }
        }
        Column {
            width: parent.width
            Text {
                width: parent.width
                color: "#5e5e5e"
                text: "Blue"
                font.pointSize: 12
                horizontalAlignment: Text.AlignHCenter
            }
            Slider {
                id: bSlider
                maximumValue: 1
                minimumValue: 0
                value:0.2
                width: parent.width
            }
        }
        Column {
            width: parent.width
            Text {
                width: parent.width
                color: "#5e5e5e"
                text: "Alpha"
                font.pointSize: 12
                horizontalAlignment: Text.AlignHCenter
            }
            Slider {
                id: aSlider
                maximumValue: 1
                minimumValue: 0
                value: 1
                width: parent.width
            }
        }
    }
    Crosshair {
        id: cross
        size: sizeSlider.value
        radius: radiusSlider.value
        xcolor: Qt.rgba(rSlider.value, gSlider.value, bSlider.value, aSlider.value)
        visible: true
    }
}
