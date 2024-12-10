import QtQuick 2.15
import QtQuick.Controls
//import QtQuick.Dialogs
//import QtQuick.Layouts
Item {
    Text {
        text: "<--   OTP Verification"
        x:32
        y:150
        font.pointSize: 18
        font.bold: true
        color: "black"
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: mno.top
        padding: -80
        text: "We have sent a verification code to:"

        font.pointSize: 14

        color: "black"
    }



    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: tf.top
        padding: -50
        //anchors.verticalCenter: parent.verticalCenter
        id:mno
        text: "+91-9010961040"

        font.pointSize: 14
        font.bold: true
        color: "black"
    }
    Row{
        id:tf
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        spacing: 25
        TextField {
            id: tf1
            height: 40
            width: 40

            font.pixelSize: 20
            font.bold: true // Makes the text bold
            placeholderTextColor: "black" // Sets the text color to black
            horizontalAlignment: Text.AlignHCenter // Centers text horizontally
            verticalAlignment: Text.AlignVCenter // Centers text vertically

            background: Rectangle {
                border.width: 2
                border.color: "gray"
                radius: 10
            }
            // Signal for further validation (optional)
            onTextChanged: {
                if (text.length > 1 || !/^\d$/.test(text)) {
                    // Reset the text if it's invalid
                    text = text.slice(0, 1);
                }
            }
            validator: IntValidator { // Ensures only numbers are allowed
                bottom: 0
                top: 9
            }
        }

        TextField {
            id: tf2
            height: 40
            width: 40

            font.pixelSize: 20
            font.bold: true // Makes the text bold
            placeholderTextColor: "black" // Sets the text color to black
            horizontalAlignment: Text.AlignHCenter // Centers text horizontally
            verticalAlignment: Text.AlignVCenter // Centers text vertically

            background: Rectangle {
                border.width: 2
                border.color: "gray"
                radius: 10
            }
            // Signal for further validation (optional)
            onTextChanged: {
                if (text.length > 1 || !/^\d$/.test(text)) {
                    // Reset the text if it's invalid
                    text = text.slice(0, 1);
                }
            }
            validator: IntValidator { // Ensures only numbers are allowed
                bottom: 0
                top: 9
            }
        }
        TextField {
            id: tf3
            height: 40
            width: 40

            font.pixelSize: 20
            font.bold: true // Makes the text bold
            placeholderTextColor: "black" // Sets the text color to black
            horizontalAlignment: Text.AlignHCenter // Centers text horizontally
            verticalAlignment: Text.AlignVCenter // Centers text vertically

            background: Rectangle {
                border.width: 2
                border.color: "gray"
                radius: 10
            }
            // Signal for further validation (optional)
            onTextChanged: {
                if (text.length > 1 || !/^\d$/.test(text)) {
                    // Reset the text if it's invalid
                    text = text.slice(0, 1);
                }
            }
            validator: IntValidator { // Ensures only numbers are allowed
                bottom: 0
                top: 9
            }
        }
        TextField {
            id: tf4
            height: 40
            width: 40

            font.pixelSize: 20
            font.bold: true // Makes the text bold
            placeholderTextColor: "black" // Sets the text color to black
            horizontalAlignment: Text.AlignHCenter // Centers text horizontally
            verticalAlignment: Text.AlignVCenter // Centers text vertically

            background: Rectangle {
                border.width: 2
                border.color: "gray"
                radius: 10
            }
            // Signal for further validation (optional)
            onTextChanged: {
                if (text.length > 1 || !/^\d$/.test(text)) {
                    // Reset the text if it's invalid
                    text = text.slice(0, 1);
                }
            }
            validator: IntValidator { // Ensures only numbers are allowed
                bottom: 0
                top: 9
            }
        }
    }


    Row{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: tf.top
        padding: 50
        Text {
            text: "Didn't recivethe OTP ? "

            font.pointSize: 14

            color: "black"
        }
        Text {
            text: "Resend "
            font.underline: true

            font.pointSize: 14
            font.bold: true
            color: "green"
        }
        Text {
            text: "in 00:30 sec"

            font.pointSize: 14

            color: "black"
        }
    }




    Button {
        id: vp
        width: 360
        height: 67
        anchors.horizontalCenter: parent.horizontalCenter
        y: 500

        enabled: tf1.text.length === 1 && tf2.text.length === 1 && tf3.text.length === 1 && tf4.text.length === 1
        // Button is enabled only when all TextFields have a single character

        background: Rectangle {
            color: vp.enabled ? (vp.pressed ? "#000000" : "#227FC0") : "gray"
            // Gray color when disabled, changes dynamically
            radius: 10
        }

        Text {
            id: name
            text: qsTr("Verify and Proceed")
            color: "white"
            font.bold: true
            font.pointSize: 14
            anchors.centerIn: parent
        }
    }

}import QtQuick 2.15

Item {

}
