import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Window 2.0

ApplicationWindow {
    property int size: 10
    property int radius: 5
    property color xcolor
    id: crosshair
    flags: Qt.FramelessWindowHint | Qt.Window | Qt.WindowStaysOnTopHint
    width: 31
    color: "transparent"
    height: 31
    x: Screen.width/2-(size/2)
    y: Screen.height/2-(size/2)

    Rectangle {
        color: crosshair.xcolor
        radius: crosshair.radius
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        width: size
        height: size
    }
}
