#NoEnv
#SingleInstance, Force
SetBatchLines, -1
listlines, off
SendMode Input
SetWorkingDir, %A_ScriptDir%
restart := A_ScriptDir . "\" . A_ScriptName
assets := A_ScriptDir "\assets\"
gridImage := LoadPicture(assets "background.bmp")
cross := LoadPicture(assets "cross.bmp")
circle := LoadPicture(assets "circle.bmp")
clicks := 1, x1y1 := 0, x2y1 := 0, x3y1 := 0, x1y2 := 0, x2y2 := 0, x3y2 := 0, x1y3 := 0, x2y3 := 0, x3y3 := 0
gui, 1:New
Gui, 1:Color, white
gui, 1:-Resize -DPIScale
gui, 1:+E0x02000000 +LastFound +ToolWindow
gui, 1:+E0x00080000 +E0x80000
gui, 1:Margin, 0,0
gui, 1:Add, Picture, x0 y0 w128 h128 gX1y1 vGUIX1Y1 BackgroundTrans,
gui, 1:Add, Picture, x136 y0 w128 h128 gX2y1 vGUIX2Y1 BackgroundTrans,
gui, 1:Add, Picture, x272 y0 w128 h128 gX3y1 vGUIX3Y1 BackgroundTrans,
gui, 1:Add, Picture, x0 y136 w128 h128 gX1y2 vGUIX1Y2 BackgroundTrans,
gui, 1:Add, Picture, x136 y136 w128 h128 gX2y2 vGUIX2Y2 BackgroundTrans,
gui, 1:Add, Picture, x272 y136 w128 h128 gX3y2 vGUIX3Y2 BackgroundTrans,
gui, 1:Add, Picture, x0 y272 w128 h128 gX1y3 vGUIX1Y3 BackgroundTrans,
gui, 1:Add, Picture, x136 y272 w128 h128 gX2y3 vGUIX2Y3 BackgroundTrans,
gui, 1:Add, Picture, x272 y272 w128 h128 gX3y3 vGUIX3Y3 BackgroundTrans,
gui, 1:Add, Picture, x0 y0 w400 h400 vGridImage Background, % "HBITMAP:*" gridImage
gui, 1:Show

return
guiClose:
exitapp

X1y1:
if (x1y1 = 0) {
    ree := clicks / 2
    if (InStr(ree, ".5")) {
        GuiControl,, GUIX1Y1, % "HBITMAP:*" cross
        x1y1 := "cross"
    } else {
        GuiControl,, GUIX1Y1, % "HBITMAP:*" circle
        x1y1 := "circle"
    }
    clicks := clicks + 1
    goto, checkwin
}
return
X2y1:
if (x2y1 = 0) {
    ree := clicks / 2
    if (InStr(ree, ".5")) {
        GuiControl,, GUIX2Y1, % "HBITMAP:*" cross
        x2y1 := "cross"
    } else {
        GuiControl,, GUIX2Y1, % "HBITMAP:*" circle
        x2y1 := "circle"
    }
    clicks := clicks + 1
    goto, checkwin
}
return
X3y1:
if (x3y1 = 0) {
    ree := clicks / 2
    if (InStr(ree, ".5")) {
        GuiControl,, GUIX3Y1, % "HBITMAP:*" cross
        x3y1 := "cross"
    } else {
        GuiControl,, GUIX3Y1, % "HBITMAP:*" circle
        x3y1 := "circle"
    }
    clicks := clicks + 1
    goto, checkwin
}
return
X1y2:
if (x1y2 = 0) {
    ree := clicks / 2
    if (InStr(ree, ".5")) {
        GuiControl,, GUIX1Y2, % "HBITMAP:*" cross
        x1y2 := "cross"
    } else {
        GuiControl,, GUIX1Y2, % "HBITMAP:*" circle
        x1y2 := "circle"
    }
    clicks := clicks + 1
    goto, checkwin
}
return
X2y2:
if (x2y2 = 0) {
    ree := clicks / 2
    if (InStr(ree, ".5")) {
        GuiControl,, GUIX2Y2, % "HBITMAP:*" cross
        x2y2 := "cross"
    } else {
        GuiControl,, GUIX2Y2, % "HBITMAP:*" circle
        x2y2 := "circle"
    }
    clicks := clicks + 1
    goto, checkwin
}
return
X3y2:
if (x3y2 = 0) {
    ree := clicks / 2
    if (InStr(ree, ".5")) {
        GuiControl,, GUIX3Y2, % "HBITMAP:*" cross
        x3y2 := "cross"
    } else {
        GuiControl,, GUIX3Y2, % "HBITMAP:*" circle
        x3y2 := "circle"
    }
    clicks := clicks + 1
    goto, checkwin
}
return
X1y3:
if (x1y3 = 0) {
    ree := clicks / 2
    if (InStr(ree, ".5")) {
        GuiControl,, GUIX1Y3, % "HBITMAP:*" cross
        x1y3 := "cross"
    } else {
        GuiControl,, GUIX1Y3, % "HBITMAP:*" circle
        x1y3 := "circle"
    }
    clicks := clicks + 1
    goto, checkwin
}
return
X2y3:
if (x2y3 = 0) {
    ree := clicks / 2
    if (InStr(ree, ".5")) {
        GuiControl,, GUIX2Y3, % "HBITMAP:*" cross
        x2y3 := "cross"
    } else {
        GuiControl,, GUIX2Y3, % "HBITMAP:*" circle
        x2y3 := "circle"
    }
    clicks := clicks + 1
    goto, checkwin
}
return
X3y3:
if (x3y3 = 0) {
    ree := clicks / 2
    if (InStr(ree, ".5")) {
        GuiControl,, GUIX3Y3, % "HBITMAP:*" cross
        x3y3 := "cross"
    } else {
        GuiControl,, GUIX3Y3, % "HBITMAP:*" circle
        x3y3 := "circle"
    }
    clicks := clicks + 1
    goto, checkwin
}
return

checkwin:
if ((x1y1 = "cross" && x2y1 = "cross" && x3y1 = "cross") || (x1y2 = "cross" && x2y2 = "cross" && x3y2 = "cross") || (x1y3 = "cross" && x2y3 = "cross" && x3y3 = "cross") || (x1y1 = "cross" && x2y2 = "cross" && x3y3 = "cross") || (x1y3 = "cross" && x2y2 = "cross" && x3y1 = "cross") || (x1y1 = "cross" && x1y2 = "cross" && x1y3 = "cross") || (x2y1 = "cross" && x2y2 = "cross" && x2y3 = "cross") || (x3y1 = "cross" && x3y2 = "cross" && x3y3 = "cross")) {
        msgbox, 4,, Cross won`nWant to play again?
        IfMsgBox, Yes
        {
            run % restart
            exitapp
        }
        exitapp
    }
if ((x1y1 = "circle" && x2y1 = "circle" && x3y1 = "circle") || (x1y2 = "circle" && x2y2 = "circle" && x3y2 = "circle") || (x1y3 = "circle" && x2y3 = "circle" && x3y3 = "circle") || (x1y1 = "circle" && x2y2 = "circle" && x3y3 = "circle") || (x1y3 = "circle" && x2y2 = "circle" && x3y1 = "circle") || (x1y1 = "circle" && x1y2 = "circle" && x1y3 = "circle") || (x2y1 = "circle" && x2y2 = "circle" && x2y3 = "circle") || (x3y1 = "circle" && x3y2 = "circle" && x3y3 = "circle")) {
    msgbox, 4,, Circle won`nWant to play again?
    IfMsgBox, Yes
    {
        run % restart
        exitapp
    }
    exitapp
}
if (clicks = 10) {
    msgbox, 4,, its a draw :)`nWant to play again?
    IfMsgBox, Yes
    {
        run % restart
        exitapp
    } else {
        exitapp
    }
}
return