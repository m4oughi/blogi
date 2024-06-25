import QtQuick 2.15

Item {

    Rectangle {
        anchors.fill: parent
        anchors.margins: 10

        Rectangle {
            id: leftId

            anchors.left: parent.left
            anchors.right: rightId.left


            width: (2/3) * parent.width
            height: parent.height

            color: "#1D1C1D"

            Column {
                width: parent.width
                height: parent.height

                Text {
                    text: "Education"

                    color: "white"

                    font.family: gothamBoldFontId.name
                    font.pointSize: (1/15)*parent.width
                    font.bold: true

                    wrapMode: Text.WordWrap
                }

                Text {
                    text: "Isfahan University of Technology"

                    color: "white"

                    font.family: gothamBoldFontId.name
                    font.pointSize: (1/15)*parent.width

                    wrapMode: Text.WordWrap
                }

                Text {
                    text: "<strong>M.SC.</strong> IN STRUCTURAL & EARTHQUAKE ENGINEERING (GPA: 17.32/20.00) "

                    color: "white"

                    font.family: gothamBoldFontId.name
                    font.pointSize: (1/15)*parent.width

                    wrapMode: Text.WordWrap
                }


                Rectangle {
                    width: parent.width
                    height: 20

                    Row {
                        Text {
                            text: "<strong>Focus:</strong> Computational Mechanics "
                            color: "white"

                            font.family: gothamBoldFontId.name
                            font.pointSize: 5

                            wrapMode: Text.WordWrap
                        }

                        Text {
                            text: "<strong>Advisors:</strong> Prof. Mojtaba Azhari & Prof. Saeid Sarrami"

                            color: "white"

                            font.family: gothamBoldFontId.name
                            font.pointSize: 5

                            wrapMode: Text.WordWrap
                        }
                    }
                }






                Rectangle {
                    id: spacer5

                    width: parent.width
                    height: 10

                    color: "#1D1C1D"
                }





                Text {
                    text: "Azad University - Najafabaad Branch"

                    color: "white"

                    font.family: gothamBoldFontId.name
                    font.pointSize: (1/15)*parent.width

                    wrapMode: Text.WordWrap
                }

                Text {
                    text: "B.SC. IN Civil Engineering (GPA: 17.28/20.00) "

                    color: "white"

                    font.family: gothamBoldFontId.name
                    font.pointSize: (1/15)*parent.width

                    wrapMode: Text.WordWrap
                }
            }
        }


        Rectangle {
            id: rightId

            anchors.right: parent.right

            width: (1/3) * parent.width
            height: parent.height

            color: "#1D1C1D"
        }

    }
}
