import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material

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

                    Flickable {
                        anchors.fill: parent

                        contentWidth: parent.width
                        contentHeight: 1000

                        ScrollBar.vertical: ScrollBar {
                            policy: ScrollBar.AlwaysOn
                        }
                    }
                }
            } // Row
        } // internalFrameId
    } // externalFrameId
} // root

/*
                    Rectangle {
                        width: (0.8) * parent.width
                        height: (0.8) * parent.height

                        anchors.centerIn: parent

                        color: "#1D1C1D"
                        border.color: "#15CF81"
                        border.width: 2
                        radius: 20



                        Column {
                            anchors.fill: parent

                            spacing: 10

                            topPadding: (1 / 30) * parent.width

                            Rectangle {
                                id: spacer0
                                width: 0.9 * parent.width
                                height: (1 / 30) * parent.width

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"
                            } // spacer1

                            Image {
                                id: personalPicId
                                source: "/Assets/profile/Mo.png"

                                width: (4 / 10) * parent.width * (1 / 600) * parent.height
                                height: (4 / 10) * parent.width * (1 / 600) * parent.height

                                anchors.horizontalCenter: parent.horizontalCenter
                            } // personalPicId

                            Rectangle {
                                id: spacer1
                                width: 0.9 * parent.width
                                height: (1 / 30) * parent.width

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"
                            } // spacer1

                            Text {
                                id: nameId

                                anchors.horizontalCenter: parent.horizontalCenter

                                text: qsTr("Mohammad Foroughi")
                                color: "White"

                                font.family: gothamBoldFontId.name
                                font.pointSize: (1 / 25) * parent.width
                                font.bold: true
                            } // nameId

                            Text {
                                id: majorId

                                anchors.topMargin: 10
                                anchors.horizontalCenter: parent.horizontalCenter

                                text: "Structural Engineering"
                                color: "White"

                                font.family: gothamThinItalicFontId.name
                                font.pointSize: (1 / 30) * parent.width
                                font.bold: true
                            } // majorId

                            Rectangle {
                                id: spacer2
                                width: 0.9 * parent.width
                                height: (1 / 30) * parent.width

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"
                            } // spacer2

                            Text {
                                id: phoneLink

                                anchors.topMargin: 10
                                anchors.horizontalCenter: parent.horizontalCenter

                                font.family: gothamThinItalicFontId.name
                                font.pointSize: (1 / 35) * parent.width
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
                                font.pointSize: (1 / 35) * parent.width
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
                                phoneLink.text = '<a style="color:white; text-decoration:none;" href="tel:+989226219173">+98 922 621 9173</a>'

                                // Set the email link text
                                emailLink.text = '<a style="color:white; text-decoration:none;" href="mailto:foroughi.mohammad.1994@gmail.com">foroughi.mohammad.1994@gmail.com</a>'
                            } // Component

                            Rectangle {
                                id: spacer3
                                width: (0.9) * parent.width
                                height: (1 / 30) * parent.width

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"
                            } // spacer2

                            Rectangle {
                                id: socialId1

                                width: parent.width - 30
                                height: (1 / 8) * parent.width

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"

                                Button {
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
                                    } // background

                                    MouseArea {
                                        onClicked: Qt.openUrlExternally(
                                                       "https://www.linkedin.com/in/mohamad-foroughi/")
                                        anchors.fill: parent
                                    } // MouseArea
                                } // linkedinId

                                Button {
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
                                        onClicked: Qt.openUrlExternally(
                                                       "https://github.com/m4oughi")
                                        anchors.fill: parent
                                    } // MouseArea
                                } // githubId

                                Button {
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
                                        onClicked: Qt.openUrlExternally(
                                                       "https://x.com/mohammad4oughi")
                                        anchors.fill: parent
                                    } // MouseArea
                                } // twitterId
                            } // socialId1

                            Rectangle {
                                id: socialId2

                                width: parent.width - 30
                                height: (1 / 8) * parent.width

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"

                                Button {
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
                                        onClicked: Qt.openUrlExternally(
                                                       "https://t.me/Mohammad4oughi")
                                        anchors.fill: parent
                                    } // MouseArea
                                } // telegramId

                                Button {
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
                                        onClicked: Qt.openUrlExternally(
                                                       "https://wa.me/989226219173")
                                        anchors.fill: parent
                                    } // MouseArea
                                } // whatsappId

                                Button {
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
                                        onClicked: Qt.openUrlExternally(
                                                       "https://join.skype.com/invite/zHbY39GpwOhc")
                                        anchors.fill: parent
                                    } // MouseArea
                                } // skypeId
                            } // socialId2

                            Rectangle {
                                id: spacer4
                                width: 0.9 * parent.width
                                height: (1 / 30) * parent.width

                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "#1D1C1D"
                            } // spacer1

                            Text {
                                id: copyRightId
                                text: qsTr(
                                          "© 2024 m4oughi. All Right Reserved!")

                                anchors.topMargin: (1 / 30) * parent.height
                                anchors.horizontalCenter: parent.horizontalCenter

                                color: "grey"

                                font.family: gothamThinItalicFontId.name
                                font.pointSize: (1 / 40) * parent.width
                            } // copyRightId
                        }
                    }
                }
                */

