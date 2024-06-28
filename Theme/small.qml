import QtQuick 2.15
import QtQuick.Window
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
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

        anchors.fill: parent
        anchors.margins: 15

        clip: true

        radius: 20
        color: "black"
        border.color: "white"
        border.width: 3

        Rectangle {
            id: internalFrameId

            clip: true

            anchors.fill: parent
            anchors.margins: 15

            radius: 15
            color: "#1D1C1D"


            Flickable {
                id: flickableboxId

                anchors.fill: parent
                contentWidth: parent.width
                contentHeight: 1500

                ScrollBar.vertical: ScrollBar {
                    policy: ScrollBar.AlwaysOn
                }


                Column {
                    id: contentColumnId

                    anchors.fill: parent

                    spacing: 10

                    Rectangle {
                        id: spacer1

                        width: parent.width
                        height: 30

                        color: "#1D1C1D"
                    } // spacer1


                    Rectangle {
                        id: profileBoxId

                        width: (10/11) * parent.width
                        height: profileColumnId.implicitHeight + 20

                        anchors.horizontalCenter: parent.horizontalCenter

                        radius: 10
                        color: "#1D1C1D"
                        border.color: "#15CF81"
                        border.width: 2


                        Column {
                            id: profileColumnId

                            width: profileBoxId.width - 10

                            spacing: 5
                            topPadding: 20



                            Image {
                                id: personalPicId
                                source: "/Assets/profile/Mo.png"

                                width: (3/5)*parent.width
                                height: (3/5)*parent.width

                                anchors.horizontalCenter: parent.horizontalCenter
                            } // personalPicId


                            Rectangle{
                                id: spacer2
                                width: 0.9 * parent.width
                                height: 10

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"
                            } // spacer2


                            Text {
                                id: nameId

                                anchors.horizontalCenter: parent.horizontalCenter

                                text: qsTr("Mohammad Foroughi")
                                color: "White"

                                font.family: gothamBoldFontId.name
                                font.pointSize: (1/15)*parent.width
                                font.bold: true
                            } // nameId

                            Text {
                                id: majorId

                                anchors.topMargin: 10
                                anchors.horizontalCenter: parent.horizontalCenter

                                text: "Structural Engineering"
                                color: "White"

                                font.family: gothamThinItalicFontId.name
                                font.pointSize: (1/18)*parent.width
                                font.bold: true
                            } // majorId


                            Text {
                                id: phoneLink

                                anchors.topMargin: 10
                                anchors.horizontalCenter: parent.horizontalCenter

                                font.family: gothamThinItalicFontId.name
                                font.pointSize: (1/25)*parent.width
                                font.bold: true

                                textFormat: Text.RichText
                                onLinkActivated: {
                                    if (link.startsWith("tel:")) {
                                        Qt.openUrlExternally(link)
                                    }
                                }
                            } // phoneLink

                            Text {
                                id: emailLink

                                anchors.topMargin: 10
                                anchors.horizontalCenter: parent.horizontalCenter

                                font.family: gothamThinItalicFontId.name
                                font.pointSize: (1/25)*parent.width
                                font.bold: true

                                textFormat: Text.RichText
                                onLinkActivated: {
                                    if (link.startsWith("mailto:")) {
                                        Qt.openUrlExternally(link)
                                    }
                                }
                            } // emailLink

                            Component.onCompleted: {
                                // Set the phone link text
                                phoneLink.text = '<a style="color:white; text-decoration:none;" href="tel:+989226219173">+98 922 621 9173</a>';

                                // Set the email link text
                                emailLink.text = '<a style="color:white; text-decoration:none;" href="mailto:foroughi.mohammad.1994@gmail.com">foroughi.mohammad.1994@gmail.com</a>';
                            } // Component

                            Rectangle{
                                id: spacer3
                                width: (0.9) * parent.width
                                height: 10

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"
                            } // spacer3


                            Rectangle {
                                id: socialId1

                                width: parent.width - 30
                                height: (2/13) * parent.width

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"

                                Button{
                                    id: linkedinId

                                    width: socialId1.height
                                    height: socialId1.height

                                    anchors.top: parent.top
                                    anchors.bottom: parent.bottom
                                    anchors.right: githubId.left

                                    anchors.rightMargin: 10

                                    background: Image {
                                        source: "/Assets/icons/linkedin.png"

                                        anchors.fill: parent
                                    }  // background

                                    MouseArea {
                                        onClicked: Qt.openUrlExternally("https://www.linkedin.com/in/mohamad-foroughi/")
                                        anchors.fill: parent
                                    } // MouseArea
                                } // linkedinId

                                Button{
                                    id: githubId

                                    width: socialId1.height
                                    height: socialId1.height

                                    anchors.top: parent.top
                                    anchors.bottom: parent.bottom
                                    anchors.horizontalCenter: parent.horizontalCenter

                                    background: Image {
                                        source: "/Assets/icons/github.png"

                                        anchors.fill: parent
                                    } // background

                                    MouseArea {
                                        onClicked: Qt.openUrlExternally("https://github.com/m4oughi")
                                        anchors.fill: parent
                                    } // MouseArea
                                } // githubId

                                Button{
                                    id: twitterId

                                    width: socialId1.height
                                    height: socialId1.height

                                    anchors.top: parent.top
                                    anchors.bottom: parent.bottom
                                    anchors.left: githubId.right

                                    anchors.leftMargin: 10

                                    background: Image {
                                        source: "/Assets/icons/twitter.png"

                                        anchors.fill: parent
                                    } // background

                                    MouseArea {
                                        onClicked: Qt.openUrlExternally("https://x.com/mohammad4oughi")
                                        anchors.fill: parent
                                    } // MouseArea

                                } // twitterId
                            } // socialId1

                            Rectangle {
                                id: socialId2

                                width: parent.width - 30
                                height: (2/13) * parent.width

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"

                                Button{
                                    id: telegramId

                                    width: socialId2.height
                                    height: socialId2.height

                                    anchors.top: parent.top
                                    anchors.bottom: parent.bottom
                                    anchors.right: whatsappId.left

                                    anchors.rightMargin: 10

                                    background: Image {
                                        source: "/Assets/icons/telegram.png"

                                        anchors.fill: parent
                                    } // background

                                    MouseArea {
                                        onClicked: Qt.openUrlExternally("https://t.me/Mohammad4oughi")
                                        anchors.fill: parent
                                    } // MouseArea
                                } // telegramId

                                Button{
                                    id: whatsappId

                                    width: socialId2.height
                                    height: socialId2.height

                                    anchors.top: parent.top
                                    anchors.bottom: parent.bottom
                                    anchors.horizontalCenter: parent.horizontalCenter

                                    background: Image {
                                        source: "/Assets/icons/whatsapp.png"

                                        anchors.fill: parent
                                    } // background

                                    MouseArea {
                                        onClicked: Qt.openUrlExternally("https://wa.me/989226219173")
                                        anchors.fill: parent
                                    } // MouseArea
                                } // whatsappId

                                Button{
                                    id: skypeId

                                    width: socialId2.height
                                    height: socialId2.height

                                    anchors.top: parent.top
                                    anchors.bottom: parent.bottom
                                    anchors.left: whatsappId.right

                                    anchors.leftMargin: 10

                                    background: Image {
                                        source: "/Assets/icons/skype.png"

                                        anchors.fill: parent
                                    } // background

                                    MouseArea {
                                        onClicked: Qt.openUrlExternally("https://join.skype.com/invite/zHbY39GpwOhc")
                                        anchors.fill: parent
                                    } // MouseArea

                                } // skypeId
                            } // socialId2


                            Text {
                                id: copyRightId
                                text: qsTr("© 2024 m4oughi. All Right Reserved!")

                                anchors.topMargin: (1/30)*parent.height
                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "grey"

                                font.family: gothamThinItalicFontId.name
                                font.pointSize: (1/40)*parent.width
                            }
                        } // profileColumnId
                    } // profileBoxId




                    Rectangle {
                        id: aboutMeId

                        anchors.horizontalCenter: parent.horizontalCenter

                        width: (10/11) * parent.width
                        height: aboutId.implicitHeight + 20

                        radius: 10
                        color: "#1D1C1D"
                        border.color: "#15CF81"
                        border.width: 2


                        Text {
                            id: aboutId

                            wrapMode: Text.WordWrap
                            focus: true

                            text: "I am an engineer with strong skills in math and programming, " +
                            "passionate about creating sustainable and resilient " +
                            "infrastructures. I recieived my M.Sc. from Isfahan University " +
                            "of Technology, focusing on advanced computational modeling and risk " +
                            "analysis. I have experience in teaching and research, and I am " +
                            "interested in using math and statistics to solve real-world " +
                            "engineering problems. I am now aiming to continue my research " +
                            "through a Ph.D. program, where I can work on sustainable solutions " +
                            "for global challenges. My dream is to become a top researcher and " +
                            "teacher, dedicated to making a positive difference in the world."


                            anchors.fill: parent
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.margins: 10
                            horizontalAlignment: Text.AlignJustify

                            color: "White"
                            font.pointSize: 12
                        } // aboutMeId
                    } // aboutId

//////////////////////////////////////////////////////////////////////

                    Rectangle {
                        id: spacer4

                        width: (9/10)*parent.width
                        height: 20

                        anchors.horizontalCenter: parent.horizontalCenter

                        color: "#1D1C1D"
                    }



                    Rectangle {
                        id: backMenuBarId

                        width: parent.width
                        height: 50

                        color: "#1D1C1D"
                        clip: true


                        Rectangle {
                            id: menuBarId

                            width: (0.9) * parent.width
                            height: parent.height

                            anchors.horizontalCenter: parent.horizontalCenter

                            radius: 10

                            color: "#1D1C1D"
                            border.color: "#15CF81"
                            border.width: 2

                            clip: true



                            Flickable {
                                id: menuBtnsId

                                anchors.fill: parent
                                anchors.horizontalCenter: parent.horizontalCenter

                                contentWidth: 500
                                contentHeight: parent.height

                                ScrollBar.horizontal: ScrollBar {
                                    policy: ScrollBar.AlwaysOn
                                }


                                Row {
                                    id: rowMenuId

                                    anchors.fill: parent

                                    Button {
                                        id: educationBtn

                                        width: educationBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                                        height: educationBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                                        anchors.verticalCenter: parent.verticalCenter
                                        anchors.leftMargin: (1/5)*parent.width

                                        background: Image {
                                            id: educationImageBtn

                                            source: view.currentIndex === 0 ? "/Assets/icons/education-hover.png" : educationBtn.hovered ? "/Assets/icons/education-hover.png" : "/Assets/icons/education.png"
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
                                    } // educationBtn


                                    Button {
                                        id: interestsBtn

                                        width: interestsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                                        height: interestsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                                        anchors.left: educationBtn.right
                                        anchors.verticalCenter: parent.verticalCenter

                                        background: Image {
                                            id: interestsImageBtn

                                            source: view.currentIndex === 1 ? "/Assets/icons/heart-hover.png" : interestsBtn.hovered ? "/Assets/icons/heart-hover.png" : "/Assets/icons/heart.png"
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
                                    } // interestsBtn

                                    Button {
                                        id: projectsBtn

                                        width: projectsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                                        height: projectsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                                        anchors.left: interestsBtn.right
                                        anchors.verticalCenter: parent.verticalCenter

                                        background: Image {
                                            id: projectsImageBtn

                                            source: view.currentIndex === 2 ? "/Assets/icons/projects-hover.png" : projectsBtn.hovered ? "/Assets/icons/projects-hover.png" : "/Assets/icons/projects.png"
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
                                    } // projectsBtn

                                    Button {
                                        id: instructorBtn

                                        width: instructorBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                                        height: instructorBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                                        anchors.left: projectsBtn.right
                                        anchors.verticalCenter: parent.verticalCenter

                                        background: Image {
                                            id: instructorImageBtn

                                            source: view.currentIndex === 3 ? "/Assets/icons/instructor-hover.png" : instructorBtn.hovered ? "/Assets/icons/instructor-hover.png" : "/Assets/icons/instructor.png"
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
                                    } // instructorBtn

                                    Button {
                                        id: honorsBtn

                                        width: honorsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                                        height: honorsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                                        anchors.left: instructorBtn.right
                                        anchors.verticalCenter: parent.verticalCenter

                                        background: Image {
                                            id: honorsImageBtn

                                            source: view.currentIndex === 4 ?  "/Assets/icons/honors-hover.png" : honorsBtn.hovered ? "/Assets/icons/honors-hover.png" : "/Assets/icons/honors.png"
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
                                    } // honorsBtn

                                    Button {
                                        id: publicationsBtn

                                        width: publicationsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                                        height: publicationsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                                        anchors.left: honorsBtn.right
                                        anchors.verticalCenter: parent.verticalCenter

                                        background: Image {
                                            id: publicationsImageBtn

                                            source: view.currentIndex === 5 ? "/Assets/icons/publications-hover.png" : publicationsBtn.hovered ? "/Assets/icons/publications-hover.png" : "/Assets/icons/publications.png"
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
                                    } // publicationsBtn

                                    Button {
                                        id: thesisBtn

                                        width: thesisBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                                        height: thesisBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                                        anchors.left: publicationsBtn.right
                                        anchors.verticalCenter: parent.verticalCenter

                                        background: Image {
                                            id: thesisImageBtn

                                            source: view.currentIndex === 6 ? "/Assets/icons/thesis-hover.png" : thesisBtn.hovered ? "/Assets/icons/thesis-hover.png" : "/Assets/icons/thesis.png"
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
                                    } // thesisBtn

                                    Button {
                                        id: courseworksBtn

                                        width: courseworksBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                                        height: courseworksBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                                        anchors.left: thesisBtn.right
                                        anchors.verticalCenter: parent.verticalCenter

                                        background: Image {
                                            id: courseworksImageBtn

                                            source: view.currentIndex === 7 ? "/Assets/icons/courseworks-hover.png" : courseworksBtn.hovered ? "/Assets/icons/courseworks-hover.png" : "/Assets/icons/courseworks.png"
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
                                    } // courseworksBtn

                                    Button {
                                        id: conferencesBtn

                                        width: conferencesBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                                        height: conferencesBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                                        anchors.left: courseworksBtn.right
                                        anchors.verticalCenter: parent.verticalCenter

                                        background: Image {
                                            id: conferencesImageBtn

                                            source: view.currentIndex === 8 ? "/Assets/icons/conferences-hover.png" : conferencesBtn.hovered ? "/Assets/icons/conferences-hover.png" : "/Assets/icons/conferences.png"
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
                                    } // conferencesBtn

                                    Button {
                                        id: skillsBtn

                                        width: skillsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                                        height: skillsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                                        anchors.left: conferencesBtn.right
                                        anchors.verticalCenter: parent.verticalCenter

                                        background: Image {
                                            id: skillsImageBtn

                                            source: view.currentIndex === 9 ? "/Assets/icons/skills-hover.png" : skillsBtn.hovered ? "/Assets/icons/skills-hover.png" : "/Assets/icons/skills.png"
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
                                    } // skillsBtn


                                    Button {
                                        id: recommendationsBtn

                                        width: recommendationsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width
                                        height: recommendationsBtn.hovered ? (1/11)*parent.width + (1/100)* parent.width : (1/11)*parent.width

                                        anchors.left: skillsBtn.right
                                        anchors.verticalCenter: parent.verticalCenter

                                        background: Image {
                                            id: recommendationImageBtn

                                            source: view.currentIndex === 10 ? "/Assets/icons/recommendations-hover.png" : recommendationsBtn.hovered ? "/Assets/icons/recommendations-hover.png" : "/Assets/icons/recommendations.png"
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
                                    } // recommendationsBtn
                                } // rowMenuId
                            } // menuBtnsId
                        } // menuBarId
                    } // backMenuBarId






                    Rectangle {
                        id: swipId

                        width: parent.width
                        height: 500

                        color: "#1D1C1D"

                        clip: true

                        Rectangle {
                            id: swipRecId

                            width: (9/10) * parent.width
                            height: parent.height

                            anchors.horizontalCenter: parent.horizontalCenter

                            color: "#1D1C1D"
                            border.color: "#15CF81"
                            border.width: 1
                            radius: 20

                            clip: true

                            SwipeView {
                                id: view

                                currentIndex: 0

                                anchors.fill: parent
                                //anchors.margins: 40

                                Education {
                                    id: educationId
                                }

                                Interests {
                                    id: interestsId
                                }



                                Projects {
                                    id: projectsId
                                }

                                Experiences {
                                    id: experienceId
                                }

                                Honors {
                                    id: honorsId
                                }


                                Conferences {
                                    id: conferenceId
                                }

                                Publications {
                                    id: publicationsId
                                }


                                Courseworks {
                                    id: courseworksId
                                }

                                Workshops {
                                    id: workshopsId
                                }

                                Skills {
                                    id: skillsId
                                }


                                References {
                                    id: referencesId
                                }
                            }
                        }
                    }



                } // contentColumnId
            } // flickableboxId
        } // internalFrameId
    } // externalFrameId
} // root


/*

                    */
