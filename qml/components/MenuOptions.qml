import QtQuick 2.4
import Lomiri.Components 1.3
import EdIt 1.0
import Lomiri.Content 1.1
import Lomiri.Components.Popups 1.3

  /*
     Dialog that display the menu options
  */
  Dialog {
          id: menuPickerDialog
          contentWidth: units.gu(39)
          contentHeight: root.height //get main window height

          Flickable {
                 id: settingsPageFlickable2
                 clip: true
                 contentHeight: units.gu(100)

                 anchors {
                        top: parent.top
                        left: parent.left
                        right: parent.right
                        bottom: parent.bottom
                        bottomMargin: units.gu(1)
                 }

                 Column{
                         id: mainColumn
                         anchors.fill: parent
                         spacing: units.gu(0.5)

                         //---------------------- CLOSE PopUp -------------
                         ListItem {
                               id:closeContainer
                               anchors.horizontalCenter: parent.right
                               height: units.gu(3)
                               divider.visible : false

                               Label {
                                    id:labelClose
                                     text: i18n.tr(" ")   /* placeholder */
                                     anchors {
                                           leftMargin: units.gu(12)
                                           rightMargin: units.gu(2)
                                           verticalCenter: parent.verticalCenter
                                     }
                               }

                               Image {
                                   id: closeIcon
                                   source: Qt.resolvedUrl("../graphics/close.png")
                                   height: units.gu(3)
                                   width: units.gu(3)

                                   anchors {
                                         leftMargin: units.gu(10)
                                         left: labelClose.right
                                         rightMargin: units.gu(2)
                                         verticalCenter: parent.verticalCenter
                                         //horizontalCenter: closeContainer.right
                                   }
                                }

                                MouseArea {
                                      id: selectableMouseAreaOpen2
                                      width: parent.width
                                      height: parent.height

                                      onClicked: {
                                          PopupUtils.close(menuPickerDialog)
                                      }
                                 }
                       }

                      //---------------------- OPEN -------------
                      ListItem {
                           id:openContainer
                           anchors.horizontalCenter: parent.Center
                           height: units.gu(4.5)
                           divider.visible : true

                           Image {
                               id: openIcon
                               source: Qt.resolvedUrl("../graphics/open.png")
                               height: units.gu(4)
                               width: units.gu(4)

                               anchors {
                                     leftMargin: units.gu(3)
                                     rightMargin: units.gu(2)
                                     verticalCenter: parent.verticalCenter
                               }
                            }

                            MouseArea {
                                  id: selectableMouseAreaOpen
                                  width: parent.width
                                  height: parent.height

                                  onClicked: {
                                      pageStack.push(Qt.resolvedUrl("../ui/LocalFilePickerPage.qml"))
                                      PopupUtils.close(menuPickerDialog)
                                  }
                             }

                             Label {
                                   text: i18n.tr("Open")
                                   anchors {
                                         left: openIcon.right
                                         leftMargin: units.gu(2)
                                         rightMargin: units.gu(2)
                                         verticalCenter: parent.verticalCenter
                                   }
                             }
                       }

                      //------------------------ SAVE -------------------
                      ListItem {
                            id:saveContainer
                            anchors.horizontalCenter: parent.Center
                            height: units.gu(4.5)
                            divider.visible : true

                            Image {
                                id: saveIcon
                                source: Qt.resolvedUrl("../graphics/save.png")
                                height: units.gu(4)
                                width: units.gu(4)

                                anchors {
                                      leftMargin: units.gu(2)
                                      rightMargin: units.gu(2)
                                      verticalCenter: parent.verticalCenter
                                }
                             }

                             MouseArea {
                                   id: selectableMouseAreaSave
                                   anchors.fill: parent

                                   onClicked: {
                                       if(mainPage.openedFileName == "") { /* true if file is new, never saved  */
                                            PopupUtils.open(saveAsDialog)
                                       } else { /* file not new: already exist: just update content */
                                             /* function in Main.qml file */
                                            saveExistingFile(mainPage.openedFileName,fileIO.getHomePath() + root.fileSavingPath)
                                       }
                                       PopupUtils.close(menuPickerDialog)
                                   }
                              }

                              Label {
                                    text: i18n.tr("Save")
                                    anchors {
                                          left: saveIcon.right
                                          leftMargin: units.gu(2)
                                          rightMargin: units.gu(2)
                                          verticalCenter: parent.verticalCenter
                                    }
                              }
                        }

                       //--------------------- SAVE AS -----------------------
                       ListItem {
                             id:saveAsContainer
                             anchors.horizontalCenter: parent.Center
                             height: units.gu(4.5)
                             divider.visible : true

                             Image {
                                 id: saveAsIcon
                                 source: Qt.resolvedUrl("../graphics/save-as.png")
                                 height: units.gu(4)
                                 width: units.gu(4)

                                 anchors {
                                       leftMargin: units.gu(2)
                                       rightMargin: units.gu(2)
                                       verticalCenter: parent.verticalCenter
                                 }
                              }

                              MouseArea {
                                    id: selectableMouseAreaSaveAs
                                    width: parent.width
                                    height: parent.height

                                    onClicked: {
                                        PopupUtils.open(saveAsDialog)
                                        PopupUtils.close(menuPickerDialog)
                                    }
                               }

                               Label {
                                     text: i18n.tr("Save As")
                                     anchors {
                                           left: saveAsIcon.right
                                           leftMargin: units.gu(2)
                                           rightMargin: units.gu(2)
                                           verticalCenter: parent.verticalCenter
                                     }
                               }
                       }

                       //------------------- Undo --------------------
                       ListItem {
                            id:undoContainer
                            anchors.horizontalCenter: parent.Center
                            height: units.gu(4.5)
                            divider.visible : true

                            Image {
                                id: undoIcon
                                source: Qt.resolvedUrl("../graphics/undo.png")
                                height: units.gu(4)
                                width: units.gu(4)

                                anchors {
                                      leftMargin: units.gu(2)
                                      rightMargin: units.gu(2)
                                      verticalCenter: parent.verticalCenter
                                }
                             }

                             MouseArea {
                                   id: selectableMouseAreaUndo
                                   width: parent.width
                                   height: parent.height

                                   onClicked: {
                                        textArea.undo()
                                        PopupUtils.close(menuPickerDialog)
                                   }
                              }

                              Label {
                                    text: i18n.tr("Undo last Modification")
                                    anchors {
                                          left: undoIcon.right
                                          leftMargin: units.gu(2)
                                          rightMargin: units.gu(2)
                                          verticalCenter: parent.verticalCenter
                                    }
                              }
                        }

                       //----------------------- Redo ---------------
                       ListItem {
                             id:redoContainer
                             anchors.horizontalCenter: parent.Center
                             height: units.gu(4.5)
                             divider.visible : true

                             Image {
                                 id: redoIcon
                                 source: Qt.resolvedUrl("../graphics/redo.png")
                                 height: units.gu(4)
                                 width: units.gu(4)

                                 anchors {
                                       leftMargin: units.gu(2)
                                       rightMargin: units.gu(2)
                                       verticalCenter: parent.verticalCenter
                                 }
                              }

                              MouseArea {
                                    id: selectableMouseAreaRedo
                                    width: parent.width
                                    height: parent.height

                                    onClicked: {
                                         textArea.redo()
                                         PopupUtils.close(menuPickerDialog)
                                    }
                               }

                               Label {
                                     text: i18n.tr("Redo last Modification")
                                     anchors {
                                           left: redoIcon.right
                                           leftMargin: units.gu(2)
                                           rightMargin: units.gu(2)
                                           verticalCenter: parent.verticalCenter
                                     }
                               }
                         }

                         //-------------------------- SELECT ALL ---------------------
                         ListItem {
                              id:selectAllContainer
                              anchors.horizontalCenter: parent.Center
                              height: units.gu(4.5)
                              divider.visible : true

                              Image {
                                  id: selectAllIcon
                                  source: Qt.resolvedUrl("../graphics/select-all.png")
                                  height: units.gu(4)
                                  width: units.gu(4)

                                  anchors {
                                        leftMargin: units.gu(2)
                                        rightMargin: units.gu(2)
                                        verticalCenter: parent.verticalCenter
                                  }
                               }

                               MouseArea {
                                     id: selectableMouseAreaSelectAll
                                     width: parent.width
                                     height: parent.height

                                     onClicked: {
                                         textArea.selectAll();
                                         PopupUtils.close(menuPickerDialog)
                                     }
                                }

                                Label {
                                      text: i18n.tr("Select All")
                                      anchors {
                                            left: selectAllIcon.right
                                            leftMargin: units.gu(2)
                                            rightMargin: units.gu(2)
                                            verticalCenter: parent.verticalCenter
                                      }
                                }
                          }

                         //--------------- CLEAR ----------------
                         ListItem {
                              id:clearContainer
                              anchors.horizontalCenter: parent.Center
                              height: units.gu(4.5)
                              divider.visible : true

                              Image {
                                  id: clearIcon
                                  source: Qt.resolvedUrl("../graphics/clear.png")
                                  height: units.gu(4)
                                  width: units.gu(4)

                                  anchors {
                                        leftMargin: units.gu(2)
                                        rightMargin: units.gu(2)
                                        verticalCenter: parent.verticalCenter
                                  }
                               }

                               MouseArea {
                                     id: selectableMouseAreaClear
                                     width: parent.width
                                     height: parent.height

                                     onClicked: {
                                          PopupUtils.open(confirmClearAll)
                                          PopupUtils.close(menuPickerDialog)
                                     }
                                }

                                Label {
                                      text: i18n.tr("Clear Area")
                                      anchors {
                                            left: clearIcon.right
                                            leftMargin: units.gu(2)
                                            rightMargin: units.gu(2)
                                            verticalCenter: parent.verticalCenter
                                      }
                                }
                          }

                          //-------------------- PASTE FROM CLIPBOARD -------------
                          ListItem {
                               id:pasteFromClipboardContainer
                               anchors.horizontalCenter: parent.Center
                               height: units.gu(4.5)
                               divider.visible : true

                               Image {
                                   id: pasteFromClipboardIcon
                                   source: Qt.resolvedUrl("../graphics/paste-from-clipboard.png")
                                   height: units.gu(4)
                                   width: units.gu(4)

                                   anchors {
                                         leftMargin: units.gu(2)
                                         rightMargin: units.gu(2)
                                         verticalCenter: parent.verticalCenter
                                   }
                                }

                                MouseArea {
                                      id: selectableMouseAreaPasteFromClipboard
                                      anchors.fill: parent

                                      onClicked: {
                                           PopupUtils.open(confirmPasteFromClipboard)
                                           PopupUtils.close(menuPickerDialog)
                                      }
                                 }

                                 Label {
                                       text: i18n.tr("Paste from Clipboard")
                                       anchors {
                                             left: pasteFromClipboardIcon.right
                                             leftMargin: units.gu(2)
                                             rightMargin: units.gu(2)
                                             verticalCenter: parent.verticalCenter
                                       }
                                 }
                           }

                           //---------------------- COPY TO CLIPBOARD ----------------
                           ListItem {
                                id:copyToClipboardContainer
                                anchors.horizontalCenter: parent.Center
                                height: units.gu(4.5)
                                divider.visible : true

                                Image {
                                    id: copyToClipboardIcon
                                    source: Qt.resolvedUrl("../graphics/copy-to-clipboard.png")
                                    height: units.gu(4)
                                    width: units.gu(4)

                                    anchors {
                                          leftMargin: units.gu(2)
                                          rightMargin: units.gu(2)
                                          verticalCenter: parent.verticalCenter
                                    }
                                 }

                                 MouseArea {
                                       id: selectableMouseAreaCopyToClipboard
                                       width: parent.width
                                       height: parent.height

                                       onClicked: {
                                           textArea.copy();
                                           PopupUtils.close(menuPickerDialog)
                                       }
                                  }

                                  Label {
                                        text: i18n.tr("Copy to Clipboard")
                                        anchors {
                                              left: copyToClipboardIcon.right
                                              leftMargin: units.gu(2)
                                              rightMargin: units.gu(2)
                                              verticalCenter: parent.verticalCenter
                                        }
                                  }
                            }

                             //--------------------- Import site as Text---------------
                             ListItem {
                                  id: importContainer
                                  anchors.horizontalCenter : parent.Center
                                  height: units.gu(4.5)
                                  divider.visible : true

                                  Image {
                                      id: importIcon
                                      source: Qt.resolvedUrl("../graphics/import.png")
                                      height: units.gu(4)
                                      width: units.gu(4)

                                      anchors {
                                            leftMargin: units.gu(2)
                                            rightMargin: units.gu(2)
                                            verticalCenter: parent.verticalCenter
                                      }
                                   }

                                   MouseArea {
                                         id: selectableMouseAreaImport
                                         width: parent.width
                                         height: parent.height

                                         onClicked: {
                                             PopupUtils.open(webSiteSelector);
                                             PopupUtils.close(menuPickerDialog)
                                         }
                                    }

                                    Label {
                                          text: i18n.tr("Import a site as text")
                                          anchors {
                                                left: importIcon.right
                                                leftMargin: units.gu(2)
                                                rightMargin: units.gu(2)
                                                verticalCenter: parent.verticalCenter
                                          }
                                    }
                              }

                               //---------------------- DIGEST --------------
                               ListItem {
                                     id:digestContainer
                                     anchors.horizontalCenter: parent.Center
                                     height: units.gu(4.5)
                                     divider.visible : true

                                     Image {
                                         id: digestIcon
                                         source: Qt.resolvedUrl("../graphics/digest.png")
                                         height: units.gu(4)
                                         width: units.gu(4)

                                         anchors {
                                               leftMargin: units.gu(2)
                                               rightMargin: units.gu(2)
                                               verticalCenter: parent.verticalCenter
                                         }
                                      }

                                      MouseArea {
                                            id: selectableMouseAreaDigest
                                            width: parent.width
                                            height: parent.height

                                            onClicked: {
                                                PopupUtils.open(digestCalculatorChooser)
                                                PopupUtils.close(menuPickerDialog)
                                            }
                                       }

                                       Label {
                                             text: i18n.tr("Digest")
                                             anchors {
                                                   left: digestIcon.right
                                                   leftMargin: units.gu(2)
                                                   rightMargin: units.gu(2)
                                                   verticalCenter: parent.verticalCenter
                                             }
                                       }
                                 }

                                 //---------------------------- Base64 ----------------------------
                                 ListItem {
                                      id:base64Container
                                      anchors.horizontalCenter: parent.Center
                                      height: units.gu(4.5)
                                      divider.visible : true

                                      Image {
                                          id: base64Icon
                                          source: Qt.resolvedUrl("../graphics/base64.png")
                                          height: units.gu(4)
                                          width: units.gu(4)

                                          anchors {
                                                leftMargin: units.gu(2)
                                                rightMargin: units.gu(2)
                                                verticalCenter: parent.verticalCenter
                                          }
                                       }

                                       MouseArea {
                                             id: selectableMouseAreaBase64
                                             width: parent.width
                                             height: parent.height

                                             onClicked: {
                                                 pageStack.push(base64conversionPage);
                                                 PopupUtils.close(menuPickerDialog)
                                             }
                                        }

                                        Label {
                                              text: i18n.tr("Base 64")
                                              anchors {
                                                    left: base64Icon.right
                                                    leftMargin: units.gu(2)
                                                    rightMargin: units.gu(2)
                                                    verticalCenter: parent.verticalCenter
                                              }
                                        }
                              }

                              //--------------QR Code generator ----------------
                              ListItem {
                                   id:qrCodeGeneratorContainer
                                   anchors.horizontalCenter: parent.Center
                                   height: units.gu(4.5)
                                   divider.visible : false

                                   Image {
                                       id: qrCodeIcon
                                       source: Qt.resolvedUrl("../graphics/qrcode.png")
                                       height: units.gu(4)
                                       width: units.gu(4)

                                       anchors {
                                             leftMargin: units.gu(2)
                                             rightMargin: units.gu(2)
                                             verticalCenter: parent.verticalCenter
                                       }
                                    }

                                    MouseArea {
                                          id: selectableQrCodeGenerator
                                          width: parent.width
                                          height: parent.height

                                          onClicked: {
                                              PopupUtils.open(qrCodeWebSiteSelector);
                                              PopupUtils.close(menuPickerDialog);

                                          }
                                     }

                                     Label {
                                           text: i18n.tr("QR Code")
                                           anchors {
                                                 left: qrCodeIcon.right
                                                 leftMargin: units.gu(2)
                                                 rightMargin: units.gu(2)
                                                 verticalCenter: parent.verticalCenter
                                           }
                                     }
                              }
                              //------------------------------------------------
                     }

             } //Flickable

             Scrollbar {
                  height: units.gu(55)
                  flickableItem: settingsPageFlickable2
                  align: Qt.AlignTrailing
             }
  }
