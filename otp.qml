import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3

Item {
    id:otp_item
    width: 400
    height: 600
    visible: true
    Text {
        text: "OTP Verification"
        x:32
        y:184
        font.pointSize: 18
        font.bold: true
        color: "black"
    }
    Column{
        x:32
        y:250
         //anchors.verticalCenter: parent.verticalCenter
        spacing: 20
        Text {
            text: "We have sent a verification code to:"

            font.pointSize: 14

            color: "black"
        }
        Text {
            text: "+91-9010961040"

            font.pointSize: 14
            font.bold: true
            color: "black"
        }



        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 25
            TextField {
                id: otp1
                height: 40
                width: 40

                placeholderTextColor: otp1.activeFocus ? "transparent" : "#227FC0"
                font.pixelSize: 20
                opacity: 0.5
            }
            TextField {
                id: otp2
                height: 40
                width: 40
                placeholderTextColor: otp2.activeFocus ? "transparent" : "#227FC0"
                font.pixelSize: 20
                opacity: 0.5
            }
            TextField {
                id: otp3
                height: 40
                width: 40
                placeholderTextColor: otp3.activeFocus ? "transparent" : "#227FC0"
                font.pixelSize: 20
                opacity: 0.5
            }
            TextField {
                id: otp4
                height: 40
                width: 40
                placeholderTextColor: otp4.activeFocus ? "transparent" : "#227FC0"
                font.pixelSize: 20
                opacity: 0.5
            }
        }
        Row{
            Text {
                text: "Didn't recivethe OTP ? "

                font.pointSize: 14

                color: "black"
            }
            Text {
                text: "Resend "

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

    }


    Button {
        id: vp
        width: 360
        height: 67
        anchors.horizontalCenter: parent.horizontalCenter
        y: 500
        Text {
            id: name
            text: qsTr("Verify and Proceed")
            color: "white"
            font.bold: true
            font.pointSize: 14
            anchors.centerIn: parent
        }

        background: Rectangle {
            color: vp.pressed ? "#000000" : "#227FC0"
            radius: 10
        }

    }

}
