import QtQuick 2.15

Item {
    Column {

        Text {
            text: "Honors and Awards"
            color: "white"

            anchors.top: parent.top
            anchors.left: parent.left

            font.family: gothamBoldFontId.name
            font.pointSize: (1/15)*parent.width
            font.bold: true
        }
    }
}
