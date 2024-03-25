import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Column {
        spacing: 10
        Button {
            text: "Кнопки"
            width: page.width
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("Buttons.qml"))
        }
        Button {
            text: "Время и Дата"
            width: page.width
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("DateTime.qml"))
        }
        Button {
            text: "Слайдер"
            width: page.width
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("Sliders.qml"))
        }
        Button {
            text: "Листы"
            width: page.width
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("Misc.qml"))
        }
    }
}
