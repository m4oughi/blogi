import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "qrc:/Assets/External/"
import "qrc:/Theme/"

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

            anchors.fill: parent
            anchors.margins: 15

            clip: true

            radius: 15
            color: "#1D1C1D"

            Row {
                anchors.fill: parent

                Rectangle {
                    width: (1 / 3) * parent.width
                    height: parent.height

                    color: "#1D1C1D"

                    anchors.margins: 20

                    Rectangle {
                        width: parent.width
                        height: (1 / 10) * parent.height

                        anchors.top: parent.top
                        anchors.bottom: profileId.top
                        color: "#1D1C1D"
                    }

                    LargeProfile {}

                    Rectangle {
                        width: parent.width
                        height: (1 / 10) * parent.height

                        anchors.top: profileId.bottom
                        anchors.bottom: parent.bottom

                        color: "#1D1C1D"
                    }
                }

                Rectangle {
                    width: (2 / 3) * parent.width
                    height: parent.height

                    color: "#1D1C1D"

                    anchors.margins: 20

                    Column {
                        width: parent.width
                        height: parent.height

                        Rectangle {
                            width: parent.width
                            height: 0.05 * parent.height
                            color: "#1D1C1D"
                        }

                        /////////////////////////////////////////
                        Rectangle {
                            width: parent.width
                            height: 0.8 * parent.height

                            clip: true

                            color: "#1D1C1D"

                            Rectangle {
                                width: 0.9 * parent.width
                                height: 0.9 * parent.height

                                anchors.centerIn: parent
                                clip: true

                                color: "#1D1C1D"
                                border.color: "#15CF81"
                                border.width: 2
                                radius: 20

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

                        ////////////////////////////////////////
                        Rectangle {
                            width: parent.width
                            height: 0.15 * parent.height

                            clip: true

                            color: "#1D1C1D"

                            Rectangle {
                                width: 0.40 * parent.width
                                height: 0.5 * parent.height

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"
                                clip: true

                                Rectangle {
                                    width: parent.width
                                    height: parent.height

                                    anchors.centerIn: parent

                                    clip: true

                                    color: "#1D1C1D"
                                    border.color: "#15CF81"
                                    border.width: 2
                                    radius: 10

                                    Flickable {
                                        anchors.fill: parent

                                        contentWidth: 7.8 * parent.height
                                        contentHeight: parent.height

                                        ScrollBar.vertical: ScrollBar {
                                            policy: ScrollBar.AlwaysOn
                                        }

                                        Row {
                                            anchors.fill: parent
                                            anchors.leftMargin: 0.1 * parent.height

                                            spacing: 0.1 * parent.height

                                            Rectangle {
                                                width: 0.6 * parent.height
                                                height: 0.6 * parent.height

                                                anchors.verticalCenter: parent.verticalCenter

                                                color: "#1D1C1D"
                                                Button {
                                                    id: educationBtn

                                                    width: educationBtn.hovered ? parent.width + (1 / 10) * parent.width : parent.width
                                                    height: educationBtn.hovered ? parent.height + (1 / 10) * parent.height : parent.height

                                                    background: Image {
                                                        id: educationImageBtn

                                                        anchors.fill: parent

                                                        source: view.currentIndex === 0 ? "qrc:/Assets/icons/education-hover.png" : educationBtn.hovered ? "qrc:/Assets/icons/education-hover.png" : "qrc:/Assets/icons/education.png"
                                                        sourceSize.width: Math.min(
                                                                              parent.width,
                                                                              parent.height)
                                                        sourceSize.height: Math.min(
                                                                               parent.width,
                                                                               parent.height)

                                                        fillMode: Image.PreserveAspectFit

                                                        smooth: true

                                                        //layer.enabled: true
                                                    }

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: view.currentIndex = 0
                                                    }
                                                } // educationBtn
                                            }

                                            /////////////////////////
                                            Rectangle {
                                                width: 0.6 * parent.height
                                                height: 0.6 * parent.height

                                                anchors.verticalCenter: parent.verticalCenter

                                                color: "#1D1C1D"

                                                Button {
                                                    id: interestsBtn

                                                    width: interestsBtn.hovered ? parent.width + (1 / 10) * parent.width : parent.width
                                                    height: interestsBtn.hovered ? parent.height + (1 / 10) * parent.height : parent.height

                                                    anchors.verticalCenter: parent.verticalCenter

                                                    background: Image {
                                                        id: interestsImageBtn

                                                        source: view.currentIndex === 1 ? "/Assets/icons/heart-hover.png" : interestsBtn.hovered ? "/Assets/icons/heart-hover.png" : "/Assets/icons/heart.png"
                                                        sourceSize.width: Math.min(
                                                                              parent.width,
                                                                              parent.height)
                                                        sourceSize.height: Math.min(
                                                                               parent.width,
                                                                               parent.height)

                                                        fillMode: Image.PreserveAspectFit

                                                        smooth: true

                                                        //layer.enabled: true
                                                    }

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: view.currentIndex = 1
                                                    }
                                                } // interestsBtn
                                            }

                                            /////////////////////////
                                            Rectangle {
                                                width: 0.6 * parent.height
                                                height: 0.6 * parent.height

                                                anchors.verticalCenter: parent.verticalCenter

                                                color: "#1D1C1D"

                                                Button {
                                                    id: projectsBtn

                                                    width: projectsBtn.hovered ? parent.width + (1 / 10) * parent.width : parent.width
                                                    height: projectsBtn.hovered ? parent.height + (1 / 10) * parent.height : parent.height

                                                    anchors.verticalCenter: parent.verticalCenter

                                                    background: Image {
                                                        id: projectsImageBtn

                                                        source: view.currentIndex === 2 ? "/Assets/icons/projects-hover.png" : projectsBtn.hovered ? "/Assets/icons/projects-hover.png" : "/Assets/icons/projects.png"
                                                        sourceSize.width: Math.min(
                                                                              parent.width,
                                                                              parent.height)
                                                        sourceSize.height: Math.min(
                                                                               parent.width,
                                                                               parent.height)

                                                        fillMode: Image.PreserveAspectFit

                                                        smooth: true

                                                        //layer.enabled: true
                                                    }

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: view.currentIndex = 2
                                                    }
                                                } // projectsBtn
                                            }
                                            ////////////////////////////////
                                            Rectangle {
                                                width: 0.6 * parent.height
                                                height: 0.6 * parent.height

                                                anchors.verticalCenter: parent.verticalCenter

                                                color: "#1D1C1D"

                                                Button {
                                                    id: instructorBtn

                                                    width: instructorBtn.hovered ? parent.width + (1 / 10) * parent.width : parent.width
                                                    height: instructorBtn.hovered ? parent.height + (1 / 10) * parent.height : parent.height

                                                    anchors.verticalCenter: parent.verticalCenter

                                                    background: Image {
                                                        id: instructorImageBtn

                                                        source: view.currentIndex === 3 ? "/Assets/icons/instructor-hover.png" : instructorBtn.hovered ? "/Assets/icons/instructor-hover.png" : "/Assets/icons/instructor.png"
                                                        sourceSize.width: Math.min(
                                                                              parent.width,
                                                                              parent.height)
                                                        sourceSize.height: Math.min(
                                                                               parent.width,
                                                                               parent.height)

                                                        fillMode: Image.PreserveAspectFit

                                                        smooth: true

                                                        //layer.enabled: true
                                                    }

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: view.currentIndex = 3
                                                    }
                                                } // instructorBtn
                                            }
                                            ///////////////////////////////
                                            Rectangle {
                                                width: 0.6 * parent.height
                                                height: 0.6 * parent.height

                                                anchors.verticalCenter: parent.verticalCenter

                                                color: "#1D1C1D"

                                                Button {
                                                    id: honorsBtn

                                                    width: honorsBtn.hovered ? parent.width + (1 / 10) * parent.width : parent.width
                                                    height: honorsBtn.hovered ? parent.height + (1 / 10) * parent.height : parent.height

                                                    anchors.verticalCenter: parent.verticalCenter

                                                    background: Image {
                                                        id: honorsImageBtn

                                                        source: view.currentIndex === 4 ? "/Assets/icons/honors-hover.png" : honorsBtn.hovered ? "/Assets/icons/honors-hover.png" : "/Assets/icons/honors.png"
                                                        sourceSize.width: Math.min(
                                                                              parent.width,
                                                                              parent.height)
                                                        sourceSize.height: Math.min(
                                                                               parent.width,
                                                                               parent.height)

                                                        fillMode: Image.PreserveAspectFit

                                                        smooth: true

                                                        //layer.enabled: true
                                                    }

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: view.currentIndex = 4
                                                    }
                                                } // honorsBtn
                                            }

                                            /////////////////////////////
                                            Rectangle {
                                                width: 0.6 * parent.height
                                                height: 0.6 * parent.height

                                                anchors.verticalCenter: parent.verticalCenter

                                                color: "#1D1C1D"

                                                Button {
                                                    id: publicationsBtn

                                                    width: publicationsBtn.hovered ? parent.width + (1 / 10) * parent.width : parent.width
                                                    height: publicationsBtn.hovered ? parent.height + (1 / 10) * parent.height : parent.height

                                                    anchors.verticalCenter: parent.verticalCenter

                                                    background: Image {
                                                        id: publicationsImageBtn

                                                        source: view.currentIndex === 5 ? "/Assets/icons/publications-hover.png" : publicationsBtn.hovered ? "/Assets/icons/publications-hover.png" : "/Assets/icons/publications.png"
                                                        sourceSize.width: Math.min(
                                                                              parent.width,
                                                                              parent.height)
                                                        sourceSize.height: Math.min(
                                                                               parent.width,
                                                                               parent.height)

                                                        fillMode: Image.PreserveAspectFit

                                                        smooth: true

                                                        //layer.enabled: true
                                                    }

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: view.currentIndex = 5
                                                    }
                                                } // publicationsBtn
                                            }
                                            ///////////////////////////////
                                            Rectangle {
                                                width: 0.6 * parent.height
                                                height: 0.6 * parent.height

                                                anchors.verticalCenter: parent.verticalCenter

                                                color: "#1D1C1D"

                                                Button {
                                                    id: thesisBtn

                                                    width: thesisBtn.hovered ? parent.width + (1 / 10) * parent.width : parent.width
                                                    height: thesisBtn.hovered ? parent.height + (1 / 10) * parent.height : parent.height

                                                    anchors.verticalCenter: parent.verticalCenter

                                                    background: Image {
                                                        id: thesisImageBtn

                                                        source: view.currentIndex === 6 ? "/Assets/icons/thesis-hover.png" : thesisBtn.hovered ? "/Assets/icons/thesis-hover.png" : "/Assets/icons/thesis.png"
                                                        sourceSize.width: Math.min(
                                                                              parent.width,
                                                                              parent.height)
                                                        sourceSize.height: Math.min(
                                                                               parent.width,
                                                                               parent.height)

                                                        fillMode: Image.PreserveAspectFit

                                                        smooth: true

                                                        //layer.enabled: true
                                                    }

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: view.currentIndex = 6
                                                    }
                                                } // thesisBtn
                                            }
                                            ///////////////////////////////
                                            Rectangle {
                                                width: 0.6 * parent.height
                                                height: 0.6 * parent.height

                                                anchors.verticalCenter: parent.verticalCenter

                                                color: "#1D1C1D"

                                                Button {
                                                    id: courseworksBtn

                                                    width: courseworksBtn.hovered ? parent.width + (1 / 10) * parent.width : parent.width
                                                    height: courseworksBtn.hovered ? parent.height + (1 / 10) * parent.height : parent.height

                                                    anchors.verticalCenter: parent.verticalCenter

                                                    background: Image {
                                                        id: courseworksImageBtn

                                                        source: view.currentIndex === 7 ? "/Assets/icons/courseworks-hover.png" : courseworksBtn.hovered ? "/Assets/icons/courseworks-hover.png" : "/Assets/icons/courseworks.png"
                                                        sourceSize.width: Math.min(
                                                                              parent.width,
                                                                              parent.height)
                                                        sourceSize.height: Math.min(
                                                                               parent.width,
                                                                               parent.height)

                                                        fillMode: Image.PreserveAspectFit

                                                        smooth: true

                                                        //layer.enabled: true
                                                    }

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: view.currentIndex = 7
                                                    }
                                                } // courseworksBtn
                                            }
                                            ////////////////////////////////
                                            Rectangle {
                                                width: 0.6 * parent.height
                                                height: 0.6 * parent.height

                                                anchors.verticalCenter: parent.verticalCenter

                                                color: "#1D1C1D"

                                                Button {
                                                    id: conferencesBtn

                                                    width: conferencesBtn.hovered ? parent.width + (1 / 10) * parent.width : parent.width
                                                    height: conferencesBtn.hovered ? parent.height + (1 / 10) * parent.height : parent.height

                                                    anchors.verticalCenter: parent.verticalCenter

                                                    background: Image {
                                                        id: conferencesImageBtn

                                                        source: view.currentIndex === 8 ? "/Assets/icons/conferences-hover.png" : conferencesBtn.hovered ? "/Assets/icons/conferences-hover.png" : "/Assets/icons/conferences.png"
                                                        sourceSize.width: Math.min(
                                                                              parent.width,
                                                                              parent.height)
                                                        sourceSize.height: Math.min(
                                                                               parent.width,
                                                                               parent.height)

                                                        fillMode: Image.PreserveAspectFit

                                                        smooth: true

                                                        //layer.enabled: true
                                                    }

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: view.currentIndex = 8
                                                    }
                                                } // conferencesBtn
                                            }
                                            ///////////////////////////////
                                            Rectangle {
                                                width: 0.6 * parent.height
                                                height: 0.6 * parent.height

                                                anchors.verticalCenter: parent.verticalCenter

                                                color: "#1D1C1D"

                                                Button {
                                                    id: skillsBtn

                                                    width: skillsBtn.hovered ? parent.width + (1 / 10) * parent.width : parent.width
                                                    height: skillsBtn.hovered ? parent.height + (1 / 10) * parent.height : parent.height

                                                    anchors.verticalCenter: parent.verticalCenter

                                                    background: Image {
                                                        id: skillsImageBtn

                                                        source: view.currentIndex === 9 ? "/Assets/icons/skills-hover.png" : skillsBtn.hovered ? "/Assets/icons/skills-hover.png" : "/Assets/icons/skills.png"
                                                        sourceSize.width: Math.min(
                                                                              parent.width,
                                                                              parent.height)
                                                        sourceSize.height: Math.min(
                                                                               parent.width,
                                                                               parent.height)

                                                        fillMode: Image.PreserveAspectFit

                                                        smooth: true

                                                        //layer.enabled: true
                                                    }

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: view.currentIndex = 9
                                                    }
                                                } // skillsBtn
                                            }
                                            //////////////////////////////////
                                            Rectangle {
                                                width: 0.6 * parent.height
                                                height: 0.6 * parent.height

                                                anchors.verticalCenter: parent.verticalCenter

                                                color: "#1D1C1D"

                                                Button {
                                                    id: recommendationsBtn

                                                    width: recommendationsBtn.hovered ? parent.width + (1 / 10) * parent.width : parent.width
                                                    height: recommendationsBtn.hovered ? parent.height + (1 / 10) * parent.height : parent.height

                                                    anchors.verticalCenter: parent.verticalCenter

                                                    background: Image {
                                                        id: recommendationImageBtn

                                                        source: view.currentIndex === 10 ? "/Assets/icons/recommendations-hover.png" : recommendationsBtn.hovered ? "/Assets/icons/recommendations-hover.png" : "/Assets/icons/recommendations.png"
                                                        sourceSize.width: Math.min(
                                                                              parent.width,
                                                                              parent.height)
                                                        sourceSize.height: Math.min(
                                                                               parent.width,
                                                                               parent.height)

                                                        fillMode: Image.PreserveAspectFit

                                                        smooth: true

                                                        //layer.enabled: true
                                                    }

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: view.currentIndex = 10
                                                    }
                                                } // recommendationsBtn
                                            }
                                        } // rowMenuId
                                    }
                                }
                            } // menuBtnsId
                        } // menuBarId
                    }
                }
            } // Row
        } // internalFrameId
    } // externalFrameId
} // root
