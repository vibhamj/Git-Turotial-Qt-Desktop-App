import QtQuick 2.0
import QtQuick.Layouts 1.15

Rectangle {
    color: "#696969"

    ColumnLayout {

        Text {
            id: title
            Layout.alignment: Qt.AlignCenter
            text: "Topics"
            font.family: "Helvetica"
            font.pointSize: 20
            color: "#ffffff"
        }

        ListView {
            width: 180; height: 200

            model: {
                console.log(indexModel)
                return indexModel
            }

            delegate: Item {

                    width: 180
                    height: 30
                    Text{
                        text: model.display
                        color: "#ffffff"
                    }
            }
            focus: true
        }
    }
}
