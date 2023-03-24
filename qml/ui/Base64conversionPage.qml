import QtQuick 2.4
import Lomiri.Components 1.3
import Lomiri.Components.ListItems 1.3 as ListItem
import Lomiri.Components.Popups 1.3
import Lomiri.Content 1.1

import "../components"
import "../js/base64.js" as Base64enc

/*
  Page that display the result of Base 64 encoding/decoding of the text are content
*/
Page {
     id: base64ConversionPage
     visible: false

     header: PageHeader {
        id: header
        title : i18n.tr("Base 64 encoder/decoder")

        trailingActionBar.actions: [

             Action {
                  id: importTextSite
                  text: i18n.tr("Clear all")
                  iconSource: Qt.resolvedUrl("../graphics/clear.png")
                  onTriggered: {
                      resultTextArea.text = ""
                      inputTextArea.text = ""
                  }
             }
         ]
     }

     /* the index of currenlty select item in the conversion combo box */
     property int currentConversionItemSelected : 1;

     Component {
        id: confirmSavingNote
        ConfirmSavingNote{ base64TextToInsert:resultTextArea.text }
     }

     Column {
       anchors.fill: parent

       anchors {
          margins: units.gu(1)
       }

       Component {
           id: conversionSelectorDelegate
           OptionSelectorDelegate { text: name; subText: description; }
       }

       /* The available conversions shown in the combo box */
       ListModel {
           id: conversionTypeModel
       }

       /* fill listmodel using this method because allow you to use i18n */
       Component.onCompleted: {
           conversionTypeModel.append( { name: "<b>"+i18n.tr("Encode")+"</b>", description: i18n.tr("encode to Base 64"), value:1 } );
           conversionTypeModel.append( { name: "<b>"+i18n.tr("Decode")+"</b>", description: i18n.tr("decode from Base 64"), value:2 } );
       }

       Rectangle{
            id: placeHolderRectangle
            color: root.backgroundColor
            width: parent.width
            height: units.gu(6)
       }

       Rectangle{
            id: titleContainer
            color: root.backgroundColor
            width: parent.width
            height: units.gu(10)

            /* encode/decode conversion selector */
            ListItem.ItemSelector {
                id: conversionTypeItemSelector
                anchors.topMargin: units.gu(1)
                anchors.leftMargin: units.gu(1)
                anchors.rightMargin: units.gu(1)
                delegate: conversionSelectorDelegate
                model: conversionTypeModel
                containerHeight: itemHeight * 2

                /* ItemSelectionChange event is not built-in with ItemSelector component: use a workaround */
                onDelegateClicked:{
                    resultTextArea.text = ""  //clean
                    if(conversionTypeItemSelector.currentlyExpanded.toString() != 'false'){
                        /* console.log("Selected index: "+selectedIndex); */
                        if(currentConversionItemSelected !== selectedIndex){
                           currentConversionItemSelected = selectedIndex;
                        }
                    }
                }
            }
       }

       Rectangle{
           id: inputToConvertContainer
           color: root.backgroundColor
           width: parent.width
           height: parent.height/2 - placeHolderRectangle.height - units.gu(8)

           /* Display the file content */
           TextArea {
                id: inputTextArea
                width: parent.width
                height: parent.height
                textFormat: TextEdit.AutoText
                placeholderText: i18n.tr("Insert here the content to encode/decode")
                inputMethodHints: Qt.ImhNoPredictiveText
                selectByMouse: true
                wrapMode: settings.wordWrap ? TextEdit.Wrap : TextEdit.NoWrap
           }
       }

       Rectangle{
            id: placeHolderRectangle2
            color: root.backgroundColor
            width: parent.width
            height: units.gu(1)
       }

       Rectangle{
           id: conversionResultContainer
           width: parent.width
           height: inputToConvertContainer.height

           /* Display the conversion result */
           TextArea {
                id: resultTextArea
                width: parent.width
                height: parent.height
                textFormat: TextEdit.AutoText
                placeholderText: i18n.tr("Conversion Result")
                inputMethodHints: Qt.ImhNoPredictiveText
                selectByMouse: true
                wrapMode: settings.wordWrap ? TextEdit.Wrap : TextEdit.NoWrap
           }
       }

       Row{
           id: doConversionContainer
           height: units.gu(3)
           anchors.topMargin: units.gu(1)
           spacing: units.gu(1)
           anchors.horizontalCenter: parent.horizontalCenter

           Button{
               id: doConversionButton
               anchors.verticalCenter: parent.bottom
               text: i18n.tr("Convert")
               width: units.gu(14)
               color: LomiriColors.green
               onClicked: {

                 if(inputTextArea.text.length >0)
                 {
                      resultTextArea.text = ""  //clean
                      try{
                          if (conversionTypeModel.get(conversionTypeItemSelector.selectedIndex).value === 1){
                              //console.log("Encode to Base64");
                              resultTextArea.text = Base64enc.encode(inputTextArea.text)
                          }else if(conversionTypeModel.get(conversionTypeItemSelector.selectedIndex).value === 2){
                              //console.log("Decode from Base64");
                              resultTextArea.text = Base64enc.decode(inputTextArea.text)
                          }

                       }catch(InvalidCharacterError){ /* Exception thrown from base64.js file */
                          resultTextArea.text = i18n.tr("Invalid character: the string to be decoded is not correctly encoded")
                       }
                  }else{
                     resultTextArea.text = i18n.tr("Input is empty !");
                  }
              }
           }
      }

      Row{
          id: doConversionContainer2
          height: units.gu(6)
          anchors.topMargin: units.gu(1)
          spacing: units.gu(1)
          anchors.horizontalCenter: parent.horizontalCenter

           /* add the Conversion result at the existing text (if any) in the note area */
           Button{
               id:addResultToNoteButton
               anchors.verticalCenter: parent.bottom
               text: i18n.tr("Add to note")
               width: units.gu(15)
               onClicked: {
                  textArea.text = textArea.text + resultTextArea.text
                  pageStack.pop(base64ConversionPage)
               }
           }

           /* add the Conversion result to a NEW note */
           Button{
               id:addResultToNewNoteButton
               anchors.verticalCenter: parent.bottom
               text: i18n.tr("New note")
               width: units.gu(15)
               onClicked: {

                   if(mainPage.saved == false)
                   {
                      //console.log("Current note not saved");
                      PopupUtils.open(confirmSavingNote);

                   }else{
                       /* note already saved: just create a new one */
                       mainPage.saved = false;
                       currentFileOpenedLabel.color = '#A40000'
                       mainPage.openedFileName = ""
                       mainPage.currentFileLabelVisible = false

                       textArea.text = resultTextArea.text                    
                       pageStack.pop(base64ConversionPage)
                  }
               }
           }
       }
    }

}
