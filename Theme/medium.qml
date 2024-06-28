import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material

import "qrc:/Assets/External/"


ApplicationWindow {
    id: root

    // 360 * 740
    // 411 * 914

    width: Screen.width
    height: Screen.height
    visible: true
    color: "#716F73"
    title: "Mohammad Foroughi"


    // Load custom fonts
    FontLoader {
        id: gothamBoldFontId
        source: "/Assets/fonts/GothamBold.ttf"
    } // FontLoader

    FontLoader {
        id: gothamThinItalicFontId
        source: "/Assets/fonts/Gotham-ThinItalic.otf"
    } // FontLoader

    FontLoader {
        id: gothamBookFontId
        source: "/Assets/fonts/GothamBook.ttf"
    } // FontLoader


    Rectangle {
        id: externalFrameId

        clip: true

        anchors.fill: parent
        anchors.margins: 30

        color: "black"
        border.color: "white"
        border.width: 3

        radius: 20


        Rectangle {
            id: internalFrameId

            clip: true

            anchors.fill: externalFrameId
            anchors.margins: 15

            color: "#1D1C1D"

            radius: 15

            Rectangle {
                id: leftSideRec

                width: (1/3) * parent.width

                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left

                color: "#1D1C1D"

                z: 1


                Rectangle {
                    id: profileId

                    anchors.fill: parent

                    anchors.leftMargin: (1/8)*parent.width
                    anchors.rightMargin: (1/8)*parent.width
                    anchors.topMargin: (1/15)*parent.height
                    anchors.bottomMargin: (1/15)*parent.height


                    color: "#1D1C1D"

                    radius: 20

                    border.color: "#15CF81"
                    border.width: 1


                    Text {
                        id: nameId
                        text: qsTr("Mohammad")


                        font.family: gothamBoldFontId.name
                        font.pointSize: (1/23)*parent.width
                        font.bold: true

                        anchors.top: profileId.top
                        anchors.left: profileId.left

                        anchors.topMargin: (1/16)*parent.height
                        anchors.leftMargin: (1/5)*parent.width

                        color: "white"
                    }


                    Text {
                        id: field1Id
                        text: qsTr("Civil")

                        anchors.top: parent.top
                        anchors.right: parent.right

                        anchors.topMargin: (1/18)*parent.height
                        anchors.rightMargin: (1/5)*parent.width

                        FontLoader {
                            id: gothamFontId
                            source: "/src/fonts/Gotham.ttf"
                        }

                        font.family: gothamFontId.name
                        font.pointSize: (1/40)*parent.width

                        color: "white"

                    }

                    Text {
                        id: field2Id
                        text: qsTr("Engineering")

                        anchors.top: field1Id.bottom
                        anchors.right: parent.right

                        anchors.topMargin: (1/40)*field1Id.height
                        anchors.rightMargin: (1/5)*parent.width


                        font.family: gothamFontId.name
                        font.pointSize: (1/40)*parent.width

                        color: "white"

                    }


                    Image {
                        id: mohammadPicId
                        source: "/src/assets/Mohammad.jpg"

                        width: (3/5)*parent.width
                        height: (3/5)*parent.width

                        anchors.top: nameId.bottom
                        anchors.horizontalCenter: parent.horizontalCenter

                        anchors.topMargin: (1/50)*parent.height

                    }


                    Text {
                        id: copyRightId
                        text: qsTr("© 2024 m4oughi. All Right Reserved")

                        anchors.top: mohammadPicId.bottom

                        anchors.topMargin: (1/30)*parent.height
                        anchors.horizontalCenter: parent.horizontalCenter

                        color: "grey"

                        font.family: gothamFontId.name
                        font.pointSize: (1/40)*parent.width
                    }




                    Rectangle {
                        id: linksRecId

                        anchors.top: copyRightId.bottom
                        anchors.horizontalCenter: parent.horizontalCenter

                        anchors.topMargin: (1/30)*parent.height

                        width: (3/5)*parent.width
                        height: (1/5)*parent.height
                        color: "transparent"


                        Button {
                            id: linkedinBtn

                            anchors.top: copyRightId.bottom
                            anchors.right: githubBtn.left

                            width: (1/2)*parent.height
                            height: (1/2)*parent.height


                            background: Image {
                                id: linkedinImageBtn


                                source: "/src/assets/icons/linkedin.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                onClicked: Qt.openUrlExternally("https://www.linkedin.com")
                                anchors.fill: parent
                            }
                        }


                        Button {
                            id: githubBtn

                            anchors.top: copyRightId.bottom
                            anchors.horizontalCenter: parent.horizontalCenter

                            width: (1/2)*parent.height
                            height: (1/2)*parent.height

                            background: Image {
                                id: githubImageBtn

                                source: "/src/assets/icons/github.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                onClicked: Qt.openUrlExternally("https://www.github.com")
                                anchors.fill: parent
                            }
                        }

                        Button {
                            id: twitterBtn

                            anchors.top: copyRightId.bottom
                            anchors.left: githubBtn.right

                            width: (1/2)*parent.height
                            height: (1/2)*parent.height


                            background: Image {
                                id: twitterImageBtn

                                source: "/src/assets/icons/twitter.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                onClicked: Qt.openUrlExternally("https://www.twitter.com")
                                anchors.fill: parent
                            }
                        }


                        Button {
                            id: skypeBtn

                            anchors.top: linkedinBtn.bottom
                            anchors.horizontalCenter: linkedinBtn.horizontalCenter

                            width: (1/2)*parent.height
                            height: (1/2)*parent.height

                            background: Image {
                                id: skypeImageBtn


                                source: "/src/assets/icons/skype.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                onClicked: Qt.openUrlExternally("https://www.skype.com")
                                anchors.fill: parent
                            }
                        }

                        Button {
                            id: whatsappBtn

                            anchors.top: githubBtn.bottom
                            anchors.horizontalCenter: githubBtn.horizontalCenter

                            width: (1/2)*parent.height
                            height: (1/2)*parent.height

                            background: Image {
                                id: whatsappImageBtn

                                source: "/src/assets/icons/whatsapp.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }
                        }

                        Button {
                            id: telegramBtn

                            anchors.top: twitterBtn.bottom
                            anchors.horizontalCenter: twitterBtn.horizontalCenter

                            width: (1/2)*parent.height
                            height: (1/2)*parent.height

                            background: Image {
                                id: telegramImageBtn

                                source: "/src/assets/icons/telegram.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }
                        }
                    }

                    Button {
                        id: emailMeBtn
                        text: qsTr("Email Me!")
                        font.family: gothamFontId.name
                        font.pointSize: (1/25)*parent.width

                        anchors.top: linksRecId.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.topMargin: (1/30)*parent.height

                        background: Rectangle {
                            implicitWidth: (2/3)*parent.width
                            implicitHeight: (1/10)*parents.height
                            opacity: enabled ? 1 : 0.3
                            color: emailMeBtn.down ? "#d0d0d0" : (emailMeBtn.hovered ? "#108955" : "#15CF81")
                            radius: 20
                        }
                    }
                }
            }





            Rectangle {
                id: rightSideRec

                width: (2/3) * parent.width

                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.right: parent.right

                color: "#1D1C1D"

                z: 0.5


                Rectangle{
                    id: topRecId

                    height: (9/10)*parent.height

                    color: "#1D1C1D"

                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.right: parent.right



                    SwipeView {
                        id: view

                        currentIndex: 0

                        anchors.fill: parent
                        anchors.margins: 40

                        Item {


                            Text {

                                text: qsTr("Education")
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }

                        Item {

                            Text {

                                text: qsTr("Research Interests")
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }

                        Item {
                            Text {
                                text: qsTr("Academic Projects")
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }

                        Item {
                            Text {
                                text: qsTr("Professional Experiences")
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }

                        Item {
                            Text {
                                text: qsTr("Honors and Awards")
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }

                        Item {
                            Text {
                                text: qsTr("Conference Paper")
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }

                        Item {
                            Text {
                                text: qsTr("Thesis")
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }

                        Item {
                            Text {
                                text: qsTr("Coursework")
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }

                        Item {
                            Text {
                                text: qsTr("Participated Conferences And Workshops")
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }

                        Item {
                            Text {
                                text: qsTr("Skills")
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }

                        Item {
                            Text {
                                text: qsTr("References")
                                color: "white"
                                anchors.centerIn: parent
                            }
                        }
                    }
                }


                Rectangle {
                    id: bottomRecId

                    height: (1/10)*parent.height

                    color: "#1D1C1D"

                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    anchors.right: parent.right

                    Rectangle {
                        id: navBar

                        width: (1/2)*parent.width
                        height: (4/5)*parent.height

                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter

                        color: "#1D1C1D"
                        border.color: "gray" //"#15CF81"
                        border.width: 1

                        radius: 20


                        Button {
                            id: educationBtn

                            width: educationBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                            height: educationBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                            anchors.verticalCenter: parent.verticalCenter
                            anchors.leftMargin: (1/5)*parent.width

                            background: Image {
                                id: educationImageBtn

                                source: view.currentIndex === 0 ? "/src/assets/icons/education-hover.png" : educationBtn.hovered ? "/src/assets/icons/education-hover.png" : "/src/assets/icons/education.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: view.currentIndex = 0
                            }
                        }


                        Button {
                            id: interestsBtn

                            width: interestsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                            height: interestsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                            anchors.left: educationBtn.right
                            anchors.verticalCenter: parent.verticalCenter

                            background: Image {
                                id: interestsImageBtn

                                source: view.currentIndex === 1 ? "/src/assets/icons/heart-hover.png" : interestsBtn.hovered ? "/src/assets/icons/heart-hover.png" : "/src/assets/icons/heart.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: view.currentIndex = 1
                            }
                        }


                        Button {
                            id: projectsBtn

                            width: projectsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                            height: projectsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                            anchors.left: interestsBtn.right
                            anchors.verticalCenter: parent.verticalCenter

                            background: Image {
                                id: projectsImageBtn

                                source: view.currentIndex === 2 ? "/src/assets/icons/projects-hover.png" : projectsBtn.hovered ? "/src/assets/icons/projects-hover.png" : "/src/assets/icons/projects.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: view.currentIndex = 2
                            }
                        }



                        Button {
                            id: instructorBtn

                            width: instructorBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                            height: instructorBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                            anchors.left: projectsBtn.right
                            anchors.verticalCenter: parent.verticalCenter

                            background: Image {
                                id: instructorImageBtn

                                source: view.currentIndex === 3 ? "/src/assets/icons/instructor-hover.png" : instructorBtn.hovered ? "/src/assets/icons/instructor-hover.png" : "/src/assets/icons/instructor.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: view.currentIndex = 3
                            }
                        }


                        Button {
                            id: honorsBtn

                            width: honorsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                            height: honorsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                            anchors.left: instructorBtn.right
                            anchors.verticalCenter: parent.verticalCenter

                            background: Image {
                                id: honorsImageBtn

                                source: view.currentIndex === 4 ?  "/src/assets/icons/honors-hover.png" : honorsBtn.hovered ? "/src/assets/icons/honors-hover.png" : "/src/assets/icons/honors.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: view.currentIndex = 4
                            }
                        }


                        Button {
                            id: publicationsBtn

                            width: publicationsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                            height: publicationsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                            anchors.left: honorsBtn.right
                            anchors.verticalCenter: parent.verticalCenter

                            background: Image {
                                id: publicationsImageBtn

                                source: view.currentIndex === 5 ? "/src/assets/icons/publications-hover.png" : publicationsBtn.hovered ? "/src/assets/icons/publications-hover.png" : "/src/assets/icons/publications.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: view.currentIndex = 5
                            }
                        }


                        Button {
                            id: thesisBtn

                            width: thesisBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                            height: thesisBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                            anchors.left: publicationsBtn.right
                            anchors.verticalCenter: parent.verticalCenter

                            background: Image {
                                id: thesisImageBtn

                                source: view.currentIndex === 6 ? "/src/assets/icons/thesis-hover.png" : thesisBtn.hovered ? "/src/assets/icons/thesis-hover.png" : "/src/assets/icons/thesis.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: view.currentIndex = 6
                            }
                        }


                        Button {
                            id: courseworksBtn

                            width: courseworksBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                            height: courseworksBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                            anchors.left: thesisBtn.right
                            anchors.verticalCenter: parent.verticalCenter

                            background: Image {
                                id: courseworksImageBtn

                                source: view.currentIndex === 7 ? "/src/assets/icons/courseworks-hover.png" : courseworksBtn.hovered ? "/src/assets/icons/courseworks-hover.png" : "/src/assets/icons/courseworks.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: view.currentIndex = 7
                            }
                        }


                        Button {
                            id: conferencesBtn

                            width: conferencesBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                            height: conferencesBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                            anchors.left: courseworksBtn.right
                            anchors.verticalCenter: parent.verticalCenter

                            background: Image {
                                id: conferencesImageBtn

                                source: view.currentIndex === 8 ? "/src/assets/icons/conferences-hover.png" : conferencesBtn.hovered ? "/src/assets/icons/conferences-hover.png" : "/src/assets/icons/conferences.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: view.currentIndex = 8
                            }
                        }


                        Button {
                            id: skillsBtn

                            width: skillsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                            height: skillsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                            anchors.left: conferencesBtn.right
                            anchors.verticalCenter: parent.verticalCenter

                            background: Image {
                                id: skillsImageBtn

                                source: view.currentIndex === 9 ? "/src/assets/icons/skills-hover.png" : skillsBtn.hovered ? "/src/assets/icons/skills-hover.png" : "/src/assets/icons/skills.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: view.currentIndex = 9
                            }
                        }


                        Button {
                            id: recommendationsBtn

                            width: recommendationsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                            height: recommendationsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                            anchors.left: skillsBtn.right
                            anchors.verticalCenter: parent.verticalCenter

                            background: Image {
                                id: recommendationImageBtn

                                source: view.currentIndex === 10 ? "/src/assets/icons/recommendations-hover.png" : recommendationsBtn.hovered ? "/src/assets/icons/recommendations-hover.png" : "/src/assets/icons/recommendations.png"
                                sourceSize.width: Math.min(parent.width, parent.height)
                                sourceSize.height: Math.min(parent.width, parent.height)

                                fillMode: Image.PreserveAspectFit

                                smooth: true

                                layer.enabled: true
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: view.currentIndex = 10
                            }
                        }
                    }
                }
            }
        }
    }
}

