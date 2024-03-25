import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    Column {
        Button {
            width: page.width
            text: "Отпущена"
            onPressed: text = "Нажата"
            onReleased: text = "Отпущена"
        }
        ValueButton {
            width: page.width
            property int i: 0
            label: "Counter"
            onClicked: i++
            value: i
        }
    }
}
