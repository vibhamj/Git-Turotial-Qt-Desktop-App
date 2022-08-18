import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls

Rectangle {
    id: page
    width: 600
    height: 480
    //color: "#272727"

    ListModel {
        id: contacts
        ListElement {
            name: "Chair"
            number: "x 1"
            image: "<image>"
        }
        ListElement {
            name: "Table"
            number: "x 2"
            image: "<image>"
        }
        ListElement {
            name: "Lamp"
            number: "x 2"
            image: "<image>"
        }
    }

    ColumnLayout {
        id: column
        anchors.fill: parent
        anchors.margins: 20
        spacing: 50

        ColumnLayout {
            spacing: 10
            Text {
                id: title
                //anchors.fill: parent
                anchors.topMargin: 20
                //horizontalAlignment: Text.AlignHCenter
                Layout.alignment: Qt.AlignHCenter


                text: "Checkout"
                //font.family: "Helvetica"
                font.pointSize: 24
            }

            Rectangle {
                Layout.alignment: Qt.AlignHCenter
                width: page.width - 50; height: 1
                color: "#d9d9d9"
            }
        }

        ListView {
            //anchors.fill: parent
            Layout.alignment: Qt.AlignHCenter
            width: 180; height: 200
            spacing: 10

            model: contacts
            delegate:
                RowLayout {
                    //anchors.margins: 20
                    Rectangle {
                        width: 70
                        height: 70
                        border.color: "#000000"
                        Text {
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            text: image
                            color: "#999999"
                            font.pointSize: 16
                        }
                    }
                    ColumnLayout {
                        Text {
                        horizontalAlignment: Text.AlignHCenter
                        text: name
                        font.pointSize: 16
                        }
                        Text {
                        horizontalAlignment: Text.AlignHCenter
                        text: number
                        font.pointSize: 11
                        }
                    }
                }
        }

        Button {
            id: next
            flat: true
            text: "Pay >"
            implicitWidth: contentItem.implicitWidth + 20
            height: 40
            font.pixelSize: 16
            Layout.alignment: Qt.AlignRight

            contentItem: Text {
                text: next.text
                font: next.font
                color: "#ffffff"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }

            background: Rectangle {
                    implicitWidth: next.contentItem.implicitWidth + 40
                    implicitHeight: next.height
                    color: "#009933"
                    //radius: 17
            }

        }

    }
}
