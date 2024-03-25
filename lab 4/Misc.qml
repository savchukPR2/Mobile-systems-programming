import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    Column {
        ComboBox {
            width: page.width
            label: "Лист"
            menu: ContextMenu {
                MenuItem { text: "Один" }
                MenuItem { text: "Два" }
                MenuItem { text: "Три" }
            }
            onCurrentIndexChanged: console.log(currentItem)
        }
        TextSwitch {
            id: s
            width: page.width
            text: "ВЫКЛ"
            onCheckedChanged: text = (checked ? "ВКЛ" : "ВЫКЛ")
        }
    }
}
