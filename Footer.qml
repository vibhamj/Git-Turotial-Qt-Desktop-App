import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls

RowLayout {

    property var nextButton: next
    signal nextPressed()

    layoutDirection: Qt.RightToLeft
    spacing: 20

    Button {
        id: next
        flat: true
        text: "Start"
        implicitWidth: contentItem.implicitWidth + 20
        height: 40
        font.pixelSize: 16
        onClicked: nextPressed()

        contentItem: Text {
            text: next.text
            font: next.font
            color: "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
                implicitWidth: next.contentItem.implicitWidth + 20
                implicitHeight: next.height
                color: next.down ? "#B9B914" : "#95950D"
                radius: 17
        }

    }

}
