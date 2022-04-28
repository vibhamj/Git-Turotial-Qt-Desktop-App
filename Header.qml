import QtQuick 2.0
import QtQuick.Controls

Item {
    property bool indexButtonVisible: false
    width: 32
    height: 32
    Button{
        id: indexButton
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 15
        anchors.topMargin: 15
        visible: indexButtonVisible
        width: parent.width
        height: parent.height

        Image {
            source: "Resources/indexButton.png"
            fillMode: Image.Tile
        }

        background: Rectangle {
                color: indexButton.down ? "#696969" : "#272727"
                width: 32
                height: 32
                radius: 17
        }
    }
}
