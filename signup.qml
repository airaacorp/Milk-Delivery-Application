import QtQuick 2.15
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: signIn
    width: 400
    height: 600
    visible: true

    ColumnLayout {
        anchors.fill: parent
        spacing: 20
        anchors.margins: 16 // Adds padding around the content

        // Title Text
        Text {
            text: "Signup"
            font.pointSize: 18
            color: "black"
            Layout.alignment: Qt.AlignHCenter
        }

        // Input Field Container
        Rectangle {
            Layout.alignment: Qt.AlignHCenter
            width: parent.width * 0.8
            height: parent.height * 0.1
            color: "white"
            radius: 10
            border.color: "lightgray"
            border.width: 1

            RowLayout {
                anchors.fill: parent
                spacing: 10
                anchors.margins: 10

                Image {
                    id: imgFlag
                    width: parent.width * 0.2
                    height: width * 0.666 // Maintains aspect ratio

                    source: "qrc:/Images/flag.png"
                    Layout.alignment: Qt.AlignVCenter

                }

                Rectangle {
                    width: 1
                    height: parent.height * 0.6
                    color: "lightgray"
                    Layout.alignment: Qt.AlignVCenter
                }

                TextField {
                    id: phoneNumberField
                    Layout.fillWidth: true
                    placeholderText: "Enter phone number"
                    placeholderTextColor: activeFocus ? "transparent" : "#AAAAAA"
                    font.pixelSize: 20
                    opacity: 0.8

                    inputMethodHints: Qt.ImhDigitsOnly
                    validator: RegExpValidator {
                        regExp: /^([6-9])[0-9]{9}$/
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

        // Continue Button
        Button {
            id: button2
            Layout.alignment: Qt.AlignHCenter
            // width: parent.width * 0.20
            // height: parent.height * 0.1
            enabled: phoneNumberField.text.length === 10
            text: "Continue"
            font.bold: true
            font.pointSize: 14

            background: Rectangle {
                color: enabled ? "#227FC0" : "gray"
                radius: 10
                width: parent.width * 3.50
                height: parent.height * 1.95
                anchors.centerIn: parent
            }

            onClicked: {
                if (!enabled) return;
                loader1.source = "otp.qml";
                signIn.visible = false;
            }
        }

        // Terms and Conditions Text
        ColumnLayout {
            Layout.alignment: Qt.AlignHCenter
            spacing: 5

            Text {
                text: "By continuing, you agree to our"
                font.pixelSize: 14
                color: "black"
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                text: "Terms of Service and Privacy Policy"
                font.pixelSize: 14
                font.bold: true
                color: "black"
                font.underline: true
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Loader {
        id: loader1
        anchors.fill: parent
        source: "" // Default source empty
    }
}
