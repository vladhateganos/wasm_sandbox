import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

// main window
Window {
    visible: true
    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }
}
