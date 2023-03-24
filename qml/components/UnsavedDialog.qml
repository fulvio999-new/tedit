import QtQuick 2.4
import Lomiri.Components 1.3
import Lomiri.Components.Popups 1.3

/*
   Alert the user about unsaved changes at the currently opened file and ask what want do:
   - save with the current fileName
   - save with anotehr name
   eg: user have a modified file and try to open a new one
*/
Component {
    Dialog {
        id: dialogue
        title: i18n.tr("Unsaved changes")
        text: i18n.tr("There are unsaved changes. Do you want to save this file before closing?")
        Component.onCompleted: dialogue.forceActiveFocus()
        Button {
            text: i18n.tr("Save")
            color: LomiriColors.green
            onClicked: {
                PopupUtils.close(dialogue)

                if(mainPage.openedFileName == "") {                  
                    PopupUtils.open(saveAsDialog)
                } else {
                    /* js function in Main.qml file */
                    saveExistingFile(mainPage.openedFileName,fileIO.getHomePath() + root.fileSavingPath)
                }
            }
        }
        Button {
            text: i18n.tr("Save as")
            color: LomiriColors.green
            onClicked: {
                PopupUtils.close(dialogue)
                PopupUtils.open(saveAsDialog)
            }
        }
        Button {
            text: i18n.tr("Close without saving")
            color: LomiriColors.red
            onClicked: {
                PopupUtils.close(dialogue)
                //load file selected
            }
        }
    }
}
