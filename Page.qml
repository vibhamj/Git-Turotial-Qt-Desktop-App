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
            Layout.preferredHeight: {
                console.log(page.height - footer.height - header.height - column.anchors.topMargin - column.anchors.bottomMargin
                                    - (column.spacing * 2))
                return page.height - footer.height - header.height - column.anchors.topMargin - column.anchors.bottomMargin
            }
        }

        Footer {
            id: footer
            Layout.alignment: Qt.AlignRight
            Layout.preferredWidth: page.width - column.anchors.leftMargin - column.anchors.rightMargin
            Layout.preferredHeight: 50
            onNextPressed: {
                content.source = mainWindow.getNextPageQmlFilePath();
                nextButton.text = mainWindow.isLastPage() ? "Finish" : "Next";
                header.indexButtonVisible = true;
            }
        }

    }

    /*IndexTab {
        width: 200
        anchors.left: page.left
        anchors.top: page.top
        anchors.bottom: page.bottom
    }*/

    Component.onCompleted: content.source = "FrontPage.qml"

}
