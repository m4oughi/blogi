import QtQuick 2.15
import QtQuick.Controls

Rectangle {
    //id: profileId
    width: 0.8 * parent.width
    height: 0.8 * parent.height

    anchors.centerIn: parent

    //anchors.margins: 20
    color: "#1D1C1D"
    border.color: "#15CF81"
    border.width: 2
    radius: 20

    Column {
        anchors.fill: parent

        anchors.margins: (0.03) * parent.width

        //spacing: (1 / 100) * parent.height
        Rectangle {
            id: topColId

            width: parent.width
            height: 0.025 * parent.height
            color: "#1D1C1D"
        }

        Rectangle {
            width: parent.width
            height: (0.35) * parent.height

            color: "#1D1C1D"

            Image {
                id: personalPicId
                source: "/Assets/profile/Mo.png"

                width: 0.95 * parent.height
                height: 0.95 * parent.height

                anchors.centerIn: parent
            } // personalPicId
        }

        Rectangle {
            width: parent.width
            height: 0.05 * parent.height

            color: "#1D1C1D"

            Text {
                id: nameId

                anchors.centerIn: parent

                text: "Mohammad Foroughi"
                color: "White"

                font.family: gothamBoldFontId.name
                font.pointSize: (0.55) * parent.height
                font.bold: true
            } // nameId
        }

        Rectangle {
            width: parent.width
            height: 0.05 * parent.height

            color: "#1D1C1D"

            Text {
                id: majorId

                anchors.centerIn: parent

                text: "Structural Engineering"
                color: "White"

                font.family: gothamThinItalicFontId.name
                font.pointSize: 0.45 * parent.height
                font.bold: true
            } // majorId
        }

        Rectangle {
            width: parent.width
            height: 0.05 * parent.height

            color: "#1D1C1D"

            Text {
                id: phoneLink

                anchors.centerIn: parent

                font.family: gothamThinItalicFontId.name
                font.pointSize: 0.35 * parent.height
                font.bold: true

                textFormat: Text.RichText
                onLinkActivated: {
                    if (link.startsWith("tel:")) {
                        Qt.openUrlExternally(link)
                    }
                }
            } // phoneLink

            Component.onCompleted: {
                // Set the phone link text
                phoneLink.text = '<a style="color:white; text-decoration:none;" href="tel:+989226219173">+98 922 621 9173</a>'
            }
        }

        Rectangle {
            width: parent.width
            height: 0.05 * parent.height

            color: "#1D1C1D"

            Text {
                id: emailLink

                anchors.centerIn: parent

                font.family: gothamThinItalicFontId.name
                font.pointSize: 0.3 * parent.height
                font.bold: true

                textFormat: Text.RichText
                onLinkActivated: {
                    if (link.startsWith("mailto:")) {
                        Qt.openUrlExternally(link)
                    }
                }
            } // emailLink

            Component.onCompleted: {
                // Set the email link text
                emailLink.text = '<a style="color:white; text-decoration:none;" href="mailto:foroughi.mohammad.1994@gmail.com">foroughi.mohammad.1994@gmail.com</a>'
            } // Component
        }

        Rectangle {
            id: socialId1

            width: parent.width
            height: 0.15 * parent.height

            color: "#1D1C1D"

            Button {
                id: linkedinId

                width: 0.7 * parent.height
                height: 0.7 * parent.height

                anchors.right: githubId.left
                anchors.rightMargin: (0.02) * parent.width
                anchors.verticalCenter: parent.verticalCenter

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

                width: 0.7 * parent.height
                height: 0.7 * parent.height

                anchors.centerIn: parent

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

                width: 0.7 * parent.height
                height: 0.7 * parent.height

                anchors.left: githubId.right

                anchors.leftMargin: (0.02) * parent.width
                anchors.verticalCenter: parent.verticalCenter

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

            width: parent.width
            height: 0.15 * parent.height

            color: "#1D1C1D"

            Button {
                id: telegramId

                width: 0.7 * parent.height
                height: 0.7 * parent.height

                anchors.right: whatsappId.left

                anchors.rightMargin: (0.02) * parent.width
                anchors.verticalCenter: parent.verticalCenter

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

                width: 0.7 * parent.height
                height: 0.7 * parent.height

                anchors.centerIn: parent

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

                width: 0.7 * parent.height
                height: 0.7 * parent.height

                anchors.left: whatsappId.right

                anchors.leftMargin: (0.02) * parent.width
                anchors.verticalCenter: parent.verticalCenter

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
            width: parent.width
            height: 0.05 * parent.height

            color: "#1D1C1D"

            Text {
                id: copyRightId
                text: "© 2024 m4oughi. All Right Reserved!"

                anchors.centerIn: parent

                color: "grey"

                font.family: gothamThinItalicFontId.name
                font.pointSize: 0.3 * parent.height
            } // copyRightId
        }

        Rectangle {
            id: bottomColId

            width: parent.width
            height: 0.08 * parent.height

            color: "#1D1C1D"
        }
    }
}
