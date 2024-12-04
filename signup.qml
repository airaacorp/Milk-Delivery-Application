import QtQuick 2.15
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.15

Item {
    id: signIn
    width: 400
    height: 600
    visible: true

    Text {
        text: "Signup"
        x: 32
        y: 130
        font.pointSize: 18
        color: "black"
    }

    Loader {
        id: loader1
        anchors.fill: parent
        source: "" // Ensure default source is empty
    }

    Rectangle {
        width: 320
        height: 60
        x: 41
        y: 180
        color: "white"
        radius: 10
        border.color: "lightgray"
        border.width: 1
        Row {
            anchors.centerIn: parent
            spacing: 10

            Image {
                id: imgFlag
                height: 40
                width: 60
                source: "qrc:/Images/flag.png"
            }

            Rectangle {
                width: 1
                height: 40
                color: "lightgray"
                anchors.verticalCenter: imgFlag.verticalCenter
            }

            TextField {
                id: phoneNumberField
                height: 40
                width: 220
                placeholderText: "Enter phone number"
                placeholderTextColor: activeFocus ? "transparent" : "#AAAAAA"
                font.pixelSize: 20
                opacity: 0.8

                // Ensure only digits are entered
                inputMethodHints: Qt.ImhDigitsOnly
                validator: RegExpValidator {
                    regExp: /^([6-9])[0-9]{9}$/ // Allows valid 10-digit phone numbers starting with 6-9
                }

                onTextChanged: {
                    const valid = text.match(/^([6-9])[0-9]{0,9}$/);
                    if (!valid) {
                        text = text.slice(0, -1); // Remove invalid character
                    }
                }
            }
        }
    }

    Column {
        x: 25
        y: 560
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 5
        Text {
            text: "    By continuing, you agree to our"
            font.pixelSize: 14
            color: "black"
            horizontalAlignment: Text.AlignHCenter
        }
        Row {
            spacing: 5
            Text {
                text: "Terms of Service and Privacy Policy"
                font.pixelSize: 14
                font.bold: true
                color: "black"
              font.underline: true
            }

        }
    }

    Button {
        id: button2
        width: 360
        height: 67
        anchors.horizontalCenter: parent.horizontalCenter
        y: 470
        enabled: phoneNumberField.text.length === 10 // Button is enabled only when text length is 10
        Text {
            id: name
            text: qsTr("Continue")
            font.bold: true
            color: "white"
            font.pointSize: 14
            anchors.centerIn: parent
        }

        background: Rectangle {
            color: enabled ? "#227FC0" : "gray" // Change color based on enabled state
            radius: 10
        }

        onClicked: {
            if (!enabled) return; // Safety check, even though the button should already be disabled
            loader1.source = "otp.qml"; // Ensure otp.qml exists and is accessible
            signIn.visible = false;
        }
    }
}
