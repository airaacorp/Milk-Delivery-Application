import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 402
    height: 690
    visible: true
    title: qsTr("Product")

    Loader {
        id: loader
        anchors.fill: parent
    }

    Item {
        id: mainContent
        anchors.fill: parent
        visible: true

        Image {
            height: 360
            width: 400
            source: "qrc:/Images/splash.png"
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            y: 370
            font.pointSize: 14
            font.bold: true
            text: qsTr("Milk products contribute
        to a healthy life")
        }

        Image {
            id: img2
            anchors.horizontalCenter: parent.horizontalCenter
            y: 450
            source: "qrc:/Images/account.png"
        }

        Button {
            id: button1
            width: 360
            height: 67
            anchors.horizontalCenter: parent.horizontalCenter
            y: 570
            Text {
                id: name
                text: qsTr("Get Started")
                font.bold: true
                color: "white"
                font.pointSize: 14
                anchors.centerIn: parent
            }

            background: Rectangle {
                color: button1.pressed ? "#000000" : "#227FC0"
                radius: 10
            }
            onClicked: {
                loader.source = "signup.qml"
                mainContent.visible = false
            }
        }

        // Timer {
        //     interval: 2000; running: true; repeat: false
        //     onTriggered: {
        //         mainContent.visible = false
        //         loader.source = "signup.qml"
        //     }
        // }
    }
}


// import QtQuick 2.15
// import QtQuick.Window 2.15
// import QtQuick.Controls 2.15

// Window {
//     width: 402
//     height: 690
//     visible: true
//     title: qsTr("Product")

//     Loader {
//         id: loader
//         anchors.fill: parent
//     }

//     Item {
//         id: mainContent
//         anchors.fill: parent
//         visible: true

//         // Splash Screen Logo
//         Image {
//             height: 360
//             width: 400
//             source: "qrc:/Images/splash.png"
//         }

//         // Splash Screen Text
//         Text {
//             anchors.horizontalCenter: parent.horizontalCenter
//             y: 370
//             font.pointSize: 14
//             font.bold: true
//             text: qsTr("Milk products contribute
//          to a healthy life")
//         }

//         // Splash Screen Loading Spinner
//         Rectangle {
//             id: spinnerBackground
//             anchors.fill: parent
//             color: "transparent"
//             opacity: 0.9 // Reduced opacity for outer background
//             visible: false // Initially hidden

//             // Spinner
//             Canvas {
//                 id: spinner
//                 anchors.centerIn: parent
//                 width: spinnerSize
//                 height: spinnerSize
//                 visible: true

//                 onPaint: {
//                     var ctx = spinner.getContext("2d")
//                     ctx.clearRect(0, 0, width, height)
//                     ctx.lineWidth = 5
//                     ctx.strokeStyle = "#227FC0"
//                     ctx.beginPath()
//                     ctx.arc(width / 2, height / 2, 12, 0, 2 * Math.PI * (angle / 360))
//                     ctx.stroke()
//                     angle = (angle + 10) % 360
//                 }

//                 property real angle: 0
//                 property int spinnerSize: 30 // Default size of spinner

//                 Timer {
//                     interval: 50; running: true; repeat: true
//                     onTriggered: spinner.requestPaint()
//                 }
//             }
//         }

//         Image {
//             id: img2
//             anchors.horizontalCenter: parent.horizontalCenter
//             y: 450
//             source: "qrc:/Images/account.png"
//         }

//         // Get Started Button
//         Button {
//             id: button1
//             width: 360
//             height: 67
//             anchors.horizontalCenter: parent.horizontalCenter
//             y: 570
//             Text {
//                 id: name
//                 text: qsTr("Get Started")
//                 color: "white"
//                 font.pointSize: 14
//                 anchors.centerIn: parent
//             }

//             background: Rectangle {
//                 color: button1.pressed ? "#000000" : "#227FC0"
//                 radius: 10
//             }
//             onClicked: {
//                 loader.source = "signup.qml"
//                 mainContent.visible = false
//             }
//         }

//         // Timer to display splash screen for 2 seconds
//         Timer {
//             id: splashTimer
//             interval: 2000; running: true; repeat: false
//             onTriggered: {
//                 // After 2 seconds, show the spinner and hide the splash content
//                 spinnerBackground.visible = true
//                 spinnerSize = 60 // Increase spinner size
//                 mainContent.visible = false
//                 loader.source = "signup.qml"
//             }
//         }

//           Timer {
//             id: preTimer
//             interval: 1000; running: true; repeat: false
//             onTriggered: {
//                 spinnerBackground.visible = false
//                 spinnerSize = 30
//             }
//         }
//     }
// }
