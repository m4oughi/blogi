import QtQuick 2.15

Item {

    Rectangle {
        anchors.fill: parent

        anchors.topMargin: 50
        anchors.bottomMargin: 50
        anchors.leftMargin: 20
        anchors.rightMargin: 20

        color: "#1D1C1D"

        Row {
            width: parent.width
            height: parent.height

            Rectangle {
                width: (2 / 3) * parent.width
                height: parent.height

                color: "#1D1C1D"
                Column {
                    width: parent.width
                    height: parent.height

                    spacing: 10

                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        color: "#1D1C1D"

                        Text {
                            text: "Education"
                            color: "White"
                        }
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        color: "#1D1C1D"

                        Text {
                            text: "Isfahan University of Technology"
                            color: "White"
                        }
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        color: "#1D1C1D"

                        Text {
                            text: "M.Sc. in Structural and Earthquake Engineering (GPA: 17.32/20.00)"
                            color: "White"
                        }
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        color: "#1D1C1D"

                        Row {
                            width: parent.width
                            height: parent.height

                            Rectangle {
                                width: 0.5 * parent.width
                                height: 0.1 * parent.height

                                color: "#1D1C1D"
                                Text {
                                    text: "Computational Mechanics"

                                    color: "White"
                                }
                            }
                            Rectangle {
                                width: 0.5 * parent.width
                                height: 0.1 * parent.height

                                color: "#1D1C1D"

                                Text {
                                    text: "Advisors: Mojtaba Azhari and Saeid Sarrami"
                                    color: "White"
                                }
                            }
                        }
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        color: "#1D1C1D"

                        Text {
                            text: "Azad University - Najafabad Branch"
                            color: "White"
                        }
                    }

                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        color: "#1D1C1D"

                        Text {
                            text: "B.Sc. in Civil Engineering (GPA: 17.28/20.00)"
                            color: "White"
                        }
                    }
                }
            }
            Rectangle {
                width: (1 / 3) * parent.width
                height: parent.height

                color: "Blue"
                Column {
                    width: parent.width
                    height: parent.height

                    spacing: 10

                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Education"
                        }
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Education"
                        }
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Education"
                        }
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Education"
                        }
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Education"
                        }
                    }
                    Rectangle {
                        width: 0.9 * parent.width
                        height: 0.1 * parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Education"
                        }
                    }
                }
            }
        }
    }
}
