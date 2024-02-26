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

    Grid {
        columns: 3
        y: greenSquare.height + greenSquare.x * 2.5
        spacing: 10

        Rectangle {
            id: redSquare_3
            width: 150
            height: 150
            color: 'red'
            visible: true
        }

        Rectangle {
            id: greenSquare_3
            width: 150
            height: 150
            color: 'green'
            visible: true
        }

        Rectangle {
            id: blueSquare_3
            width: 150
            height: 150
            color: 'blue'
            visible: true
        }

Rectangle {
            id: pinkSquare_2
            width: 150
            height: 150
            color: 'pink'
            visible: true

        }

        Rectangle {
            width: 150
            height: 150
            // An empty rectangle (nothing)
        }

        Rectangle {
            id: blackSquare_2
            width: 150
            height: 150
            color: 'black'
            visible: true

            transform: [
                        Translate { x: 10; y: 50 }, // смещение
                        Scale { xScale: 1.0; yScale: 0.5 }, // изменение размера
                        Rotation { origin.x: 75; origin.y: 75; angle: -45 } // поворот
                    ]
        }
    }
}