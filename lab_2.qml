import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: 'mainPage'
    allowedOrientations: orientation.All

    property int counter : 0

    Column{
        width: parent.width
        height: parent.height
        spacing: 10

        Label{
            id : counterLabel
            width: 160
            height: 100
            text: counter
            font.pixelSize: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

        }
        Button{
            width: parent.width / 2
            text: 'click me'
            onClicked: {
                counter++
            }
            anchors.top: counterLabel.bottom
        }
        Button{
            width: parent.width / 2
            text: 'back'
            onClicked: {
                counter--
            }
            anchors.top: counterLabel.bottom
            anchors.right: parent.right
        }
        Button{
            width: parent.width
            text: 'reset'
            onClicked: {
                counter = 0
            }
        }
    }
}
