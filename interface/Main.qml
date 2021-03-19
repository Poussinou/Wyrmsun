import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import frame_buffer_object 1.0

Window {
	id: window
	visible: false
	title: qsTr("Wyrmsun")
	//visibility: "Maximized"
	
	FontLoader {
		id: berenika_font
		source: "../fonts/berenika.ttf"
	}
	
	Connections {
		target: wyrmgus
		onRunningChanged: {
			if (visible && !wyrmgus.parameters.test_run && wyrmgus.running) {
				var component = Qt.createComponent("MenuStack.qml")
				
				if (component.status == Component.Error) {
					console.error(component.errorString())
					return
				}
				
				component.createObject(window)
				
				wyrmgus.call_lua_command("SetVideoSize(" + width + ", " + height + ");")
			}
		}
	}
	
	Connections {
		target: wyrmgus.game
		onStarted: {
			if (visible) {
				var component = Qt.createComponent("MapView.qml")
				
				if (component.status == Component.Error) {
					console.error(component.errorString())
					return
				}
				
				component.createObject(window)
			}
		}
	}
	
	MouseArea {
		id: frame_buffer_object_mouse_area
		anchors.fill: parent
		z: -1
		hoverEnabled: true
		acceptedButtons: Qt.AllButtons
	}
	
	FrameBufferObject {
		id: frame_buffer_object
		anchors.fill: parent
		z: 1 //place it over the menus
		
		Component.onCompleted: {
			wyrmgus.install_event_filter_on(frame_buffer_object_mouse_area)
		}
	}
		
	onClosing: {
		wyrmgus.exit()
	}
	
	Component.onCompleted: {
		if (visible) {
			wyrmgus.qml_window_active = true
		}
	}
	
	//highlight text
	function highlight(text) {
		return "<font color=\"gold\">" + text + "</font>"
	}
	
	//generate a random number
	function random(n) {
		return Math.floor(Math.random() * n)
	}
	
	//generate a random boolean value
	function random_bool() {
		return random(2) == 1
	}
}
