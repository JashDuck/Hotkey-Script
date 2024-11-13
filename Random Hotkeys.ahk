#SingleInstance, force
; Media Keys
Ins::Media_Prev
Home::Media_Play_Pause
PgUp::Media_Next

; Misc Keys
Numpad1::Run, chrome.exe "https://mail.google.com/mail/" "--new-tab" ; open gmail
Numpad2::Run, chrome.exe "https://outlook.live.com/mail/" "--new-tab" ; open outlook
Numpad3::Run, chrome.exe "https://www.dropbox.com/home" "--new-tab" ; open dropbox

; Toggles default audio device in Control Panel (switches between headset and speakers).
Numpad4:: 
  toggle:=!toggle ;toggles up and down states. 
  Run, mmsys.cpl 
  WinWait,Sound
  if toggle
    ControlSend,SysListView321,{Down 1}
  Else
    ControlSend,SysListView321,{Down 2}
  ControlClick,&Set Default
  ControlClick,OK
return