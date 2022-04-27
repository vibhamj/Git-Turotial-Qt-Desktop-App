import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls

RowLayout {

    property var nextButton: next
    signal nextPressed()

    layoutDirection: Qt.RightToLeft
    spacing: 40

    Button {
        id: next
        flat: true
        text: "Start"
        implicitWidth: contentItem.implicitWidth + 20
        implicitHeight: contentItem.implicitHeight + 20
        font.pixelSize: 14
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
                implicitHeight: next.contentItem.implicitHeight + 20
                color: next.down ? "#B9B914" : "#95950D"
                radius: 17
        }

    }

}
