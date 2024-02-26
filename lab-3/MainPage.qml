import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Column {
        spacing: 10
        Button {
            text: "Rectangles Basic"
            width: page.width
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("BasicRect.qml"))
        }
        Button {
            text: "Rectangles Table&Animation"
            width: page.width
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("ColumnAnimRect.qml"))
        }
        Button {
            text: "Rectangles Grid&Transorm"
            width: page.width
            onClicked: pageStack.animatorPush(Qt.resolvedUrl("GridTrasformRect.qml"))
        }
    }
}
