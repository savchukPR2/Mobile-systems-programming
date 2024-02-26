import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    Grid {
        id: input
        columns: 2
        width: parent.width

        Button {
            text: "+"
            width: parent.width / 2
            onClicked:{
                console.log(parseInt(number1.text) + parseInt(number2.text));
            }
        }

        Button {
            text: "-"
            width: parent.width / 2
            onClicked:{
                console.log(parseInt(number1.text) - parseInt(number2.text));
            }
        }

        TextField {
            id: number1
            placeholderText: "Number 1"
            width: parent.width / 2
        }

        TextField {
            id: number2
            placeholderText: "Number 2"
            width: parent.width / 2
        }
    }

    Button {
        text: "Отменить"
        width: parent.width
        y: number1.y + 100
        onClicked:{
            number1.text = "";
            number2.text = "";
        }
    }
}