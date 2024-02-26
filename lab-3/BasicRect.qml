import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: 'mainPage'
    allowedOrientations: orientation.All

    Rectangle {
        id: redSquare
        width: 150
        height: 150
        color: 'red'
        visible: true
        x: 100
        y: 100
    }

    Rectangle {
        id: greenSquare
        width: 150
        height: 150
        color: 'green'
        visible: true
        x: redSquare.width + redSquare.x
        y: redSquare.height + redSquare.y / 4
    }

    Rectangle {
        id: blueSquare
        width: 150
        height: 150
        color: 'blue'
        visible: true
        x: greenSquare.x + greenSquare.width / 2
        y: greenSquare.y - greenSquare.height / 2
        clip: true

        Text {
            anchors.centerIn: parent
            text: 'Квадрат'
            color: 'white'
        }
    }
}
