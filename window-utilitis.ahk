^!a::       ; Alwaysontop
WinGet, currentWindow, ID, A
Winset, Alwaysontop, , A
Return

^!s::
  WinSet, Transparent, 125, A
return

Return
^!m::       ; Make mouse-click transparent
  WinSet, ExStyle, +0x80020, ahk_id %currentWindow%
Return

^!t::       ; Undo mouse-click transparent
  WinSet, ExStyle, -0x20, ahk_id %currentWindow%
Return




;#	; #####################Transparent no transparente###################
;#	^!t::       ; Make mouse-click transparent
;#^!i::  ; Press Win+G to show the current settings of the window under the mouse.
;#MouseGetPos,,, MouseWin
;#WinGet, active_id, ID, A
;#WinGet, Transparent, Transparent, ahk_id %MouseWin%
;#WinGet, TransColor, TransColor, ahk_id %MouseWin%
;#ToolTip Translucency:`t%Transparent%`nTransColor:`t%TransColor%
;#return
;#
;#
;#    WinGet, OutputVar, Transparent , ID
;#
;#    DetectHiddenWindows, on
;#    WinGet, SavedWinId, ID, A 
;#WinGet, Transparency, Transparent
;#msgbox, %Transparency%
;#    WinGet, curtrans, Transparent, A
;#    if ! curtrans
;#        ;curtrans = 255
;#    newtrans := curtrans - 64o
;#    if curtrans < 255
;#    {
;#		       Msgbox The window is aaa %curtrans%.
;#
;#        ;WinSet, Transparent, OFF, A
;#        WinSet, Transparent, 120, A
;#    }
;#    else
;#    {
;#		       Msgbox The window is 111.
;
;        WinSet, Transparent, %newtrans%, A
;    }
;    return
;
;    ^!w::
;    DetectHiddenWindows, on
;    WinSet, TransColor, Black 128, A
;    return
;
;    ^!o::
;    WinSet, Transparent, 255, A
;    WinSet, Transparent, OFF, A
;    return
;
;    ^!g::  ; Press Win+G to show the current settings of the window under the mouse.
;    MouseGetPos,,, MouseWin
;    WinGet, Transparent, Transparent, ahk_id %MouseWin%
;    WinGet, TransColor, TransColor, ahk_id %MouseWin%
;    ToolTip Translucency:`t%Transparent%`nTransColor:`t%TransColor%
;; #########################################################
;Return
;
;^!c::       ; Click through
;
;; #####################click through###################
;WinGet, currentWindow, ID, A
;
;	if ExStyle = -0x80020
;	{
;	  WinGet, currentWindow, ID, A
;	  WinSet, ExStyle, +0x80020, ahk_id %currentWindow%
;      msgbox, "id current window: ".%currentWindow%." exstyle".ExStyle
;	}
;    	if ExStyle = +0x80020
;	{
;	  WinGet, currentWindow, ID, A
;	  WinSet, ExStyle, -0x80020, ahk_id %currentWindow%
;      msgbox, "id current window: ".%currentWindow%." exstyle".ExStyle
;	}
;
;    else {
;      WinGet, currentWindow, ID, A
;	  WinSet, ExStyle, +0x80020, ahk_id %currentWindow%
;      msgbox, "id current window: ".%currentWindow%." exstyle".ExStyle
;    }
;; #########################################################
;

;^!l::
;  WinGet, currentWindow, ID, A
;primera=0
;    if primera =0
;    {
;              WinSet, ExStyle, +0x80020, ahk_id %currentWindow%
;    }
;
;    if ExStyle = -0x20
;    {
;          WinSet, ExStyle, +0x80020, ahk_id %currentWindow%
;
;    }
;        if ExStyle = +0x80020
;    {
;          WinSet, ExStyle, -0x20, ahk_id %currentWindow%
;
;    }
;    primera=2
;return