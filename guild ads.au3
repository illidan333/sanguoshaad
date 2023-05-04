#RequireAdmin
#include <Array.au3>
#include <ScreenCapture.au3>
#include <Date.au3>

Global $g_bPaused = False
Global $playedTodayDefaultValue = False
HotKeySet("{ESC}", "TogglePause")

activateWin()

While True
   guildAds()
   Sleep(60 * 1000)
WEnd

;this function posts a guild ad
Func guildAds()
   $expandClkPtx = 670
   $expandClkPty = 950
   $worldClkPtx = 435
   $worldClkPty = 693
   $baseClkPtx = 300
   $baseClkPty = 995
   $smallSec = 4

   ;$msg1 = "天翔龙闪公会收人 没会战敲鼓要求 每周玩就行"
   $msg2 = "争霸前三公会纳新，活跃氛围好 来 壹伍仨思，二伍，〇玖琪"
   ;$msg2 = "争霸榜首公会纳新，活跃氛围好 来 壹伍仨思，二伍，〇玖琪"
   $msg3 = "精策攻略多 壹伍仨，思二伍，〇玖琪 大佬带活动"
   $msg4 = "快乐军八不禁阴，来 玖2玖2，〇仨壹仨〇"

   clickOn($expandClkPtx, $expandClkPty)
   clickOn($worldClkPtx, $worldClkPty)
   clickOn($baseClkPtx, $baseClkPty)
   Send( $msg2 )
   Send("{ENTER}")

   Sleep($smallSec * 1000)

   Send($msg3)
   Send("{ENTER}")

   Sleep($smallSec * 1000)

   Send($msg4)
   Send("{ENTER}")

EndFunc

;this function toggles to the sgs window
Func activateWin()
   $consoleTitle1 = "三国杀官方正版_十周年全新资料篇_星火燎原重燃三国！"
   $consoleTitle2 = "三国杀官方正版_三国杀十周年全新起航_星火燎原重燃三国！"
   $chromeTitle = "三国杀官方正版_三国杀十周年全新起航_星火燎原重燃三国！ - Google Chrome"
   $chromeTitle2 = "三国杀官方正版_十周年全新资料篇_星火燎原重燃三国！ - Google Chrome"
   $windowTitle = $chromeTitle

   WinActivate($consoleTitle1)
   WinActivate($consoleTitle2)
   If NOT WinExists ($windowTitle, "") Then
	  WinActivate($chromeTitle2)
   Else
	  WinActivate($chromeTitle)
   EndIf
EndFunc

;this function provides the ability to pause the script
Func TogglePause()
    $g_bPaused = Not $g_bPaused
    While $g_bPaused
        Sleep(100)
        ToolTip('Script is "Paused"', 900, 0)
    WEnd
    ToolTip("",0,0)
EndFunc   ;==>TogglePause

;this function clicks on a pixel and the wait for 1 sec
Func clickOn($x, $y)
   MouseClick("left", $x, $y);click on the task menu
   Sleep ( 1000 );wait 1 sec to load the UI
EndFunc

