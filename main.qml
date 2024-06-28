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
