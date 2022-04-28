import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls

Rectangle {
    id: page
    width: 640
    height: 480
    color: "#272727"

    ColumnLayout {
        id: column
        anchors.fill: parent.fill
        anchors.margins: 10

        Header {
            id: header
            Layout.alignment: Qt.AlignLeft
            Layout.preferredWidth: 32
            Layout.preferredHeight: 32
        }

        Loader {
            id: content
            Layout.alignment: Qt.AlignCenter
            Layout.preferredWidth: page.width - column.anchors.leftMargin - column.anchors.rightMargin
            Layout.preferredHeight: page.height - footer.height - header.height - column.anchors.topMargin - column.anchors.bottomMargin
        }

        Footer {
            id: footer
            Layout.alignment: Qt.AlignRight
            Layout.preferredWidth: page.width - column.anchors.leftMargin - column.anchors.rightMargin
            Layout.preferredHeight: 50
            onNextPressed: {
                content.source = mainWindow.getNextPageQmlFilePath();
                nextButton.text = mainWindow.isLastPage() ? "Finish" : "Next";
                header.indexButton.visible = true;
            }
        }

    }

    MouseArea {
        anchors.fill: page
        z: -1
        onClicked: header.indexButton.checked = false
    }

    IndexTab {
        id: indexTab
        width: 500
        visible: header.indexButton.checked
        anchors.left: column.left
        anchors.leftMargin: header.Layout.preferredWidth + column.anchors.leftMargin + 10
        anchors.top: page.top
        anchors.bottom: page.bottom
    }

    Component.onCompleted: content.source = "FrontPage.qml"

}
