import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: 'mainPage'
    allowedOrientations: orientation.All
    Column {
            spacing: 10
            y: greenSquare.height + greenSquare.x

            Row {
                spacing: 10

                Rectangle {
                    id: redSquare_2
                    width: 150
                    height: 150
                    color: 'red'
                    visible: true
                }

                Rectangle {
                    id: greenSquare_2
                    width: 150
                    height: 150
                    color: 'green'
                    visible: true
                }

                Rectangle {
                    id: blueSquare_2
                    width: 150
                    height: 150
                    color: 'blue'
                    visible: true
                }
            }

            Row {
                spacing: 10

                Rectangle {
                    id: pinkSquare
                    width: 150
                    height: 150
                    color: 'pink'
                    visible: true

                    SequentialAnimation {
                                    id: pinkSquareAnimation

                                    NumberAnimation {
                                        target: pinkSquare
                                        property: "y"
                                        to: pinkSquare.y + 100 // Смещение вниз на 100 пикселей
                                        duration: 1000 // Продолжительность анимации в миллисекундах
                                    }

                                    NumberAnimation {
                                        target: pinkSquare
                                        property: "width"
                                        to: pinkSquare.width * 1.5 // Увеличение ширины в 1.5 раза
                                        duration: 1000
                                    }

                                    NumberAnimation {
                                        target: pinkSquare
                                        property: "height"
                                        to: pinkSquare.height * 1.5 // Увеличение высоты в 1.5 раза
                                        duration: 1000
                                    }
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: pinkSquareAnimation.start()
                                }
                }

                Rectangle {
                    width: 150
                    height: 150
                    // An empty rectangle (nothing)
                }

                Rectangle {
                    id: blackSquare
                    width: 150
                    height: 150
                    color: 'black'
                    visible: true
                }
            }
        }
}
