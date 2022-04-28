import QtQuick 2.0
import QtQuick.Controls

Item {
    property var indexButton: index
    width: 32
    height: 32
    Button{
        id: index
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 15
        anchors.topMargin: 15
        visible: false
        width: parent.width
        height: parent.height
        checkable: true
        //display: AbstractButton.IconOnly
        //icon: "Resources/indexButton.png"

        Image {
            source: "Resources/indexButton.png"
            fillMode: Image.Tile
        }

        background: Rectangle {
                color: index.checked ? "#696969" : "#272727"
                width: 32
                height: 32
                radius: 17
        }
    }
}
