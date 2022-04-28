import QtQuick 2.0

Item{
    Text {
        id: title
        anchors.fill: parent
        anchors.topMargin: 130
        horizontalAlignment: Text.AlignHCenter


        text: "The Little Book of Git"
        font.family: "Helvetica"
        font.pointSize: 24
        color: "#ffffff"
    }

    Text {
        id: author
        anchors.fill: parent
        anchors.bottomMargin: 90
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom


        text: "By Vibha"
        font.family: "Helvetica"
        font.pointSize: 18
        color: "#ffffff"
    }
}
