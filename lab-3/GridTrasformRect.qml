import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: 'mainPage'
    allowedOrientations: orientation.All
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
