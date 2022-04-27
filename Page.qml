import QtQuick 2.0
import QtQuick.Layouts 1.15

Rectangle {
    id: page
    width: 640
    height: 480
    color: "#272727"

    ColumnLayout {

        Loader {
            id: content
            Layout.alignment: Qt.AlignCenter
            Layout.preferredWidth: page.width
            Layout.preferredHeight: page.height - footer.height - footer.Layout.bottomMargin
        }

        Footer {
            id: footer
            Layout.rightMargin: 10
            Layout.bottomMargin: 10
            Layout.alignment: Qt.AlignRight
            Layout.preferredWidth: page.width - footer.Layout.rightMargin
            Layout.preferredHeight: 50
            onNextPressed: {
                content.source = mainWindow.getNextPageQmlFilePath();
                nextButton.text = mainWindow.isLastPage() ? "Finish" : "Next";
            }
        }

    }

    Component.onCompleted: content.source = "FrontPage.qml"

}
