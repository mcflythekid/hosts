#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#include <FileConstants.au3>

Global Const $HOSTS = 'C:\Windows\System32\drivers\etc\hosts'
Global Const $NPP = 'C:\Program Files (x86)\Notepad++\notepad++.exe -nosession -multiInst'
Global Const $DESTINATION ='C:\Sync\main\hosts.txt'

RunWait($NPP & ' ' & $HOSTS)
FileCopy($HOSTS, $DESTINATION, $FC_OVERWRITE + $FC_CREATEPATH)
