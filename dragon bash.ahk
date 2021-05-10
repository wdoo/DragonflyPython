
#persistent
#singleinstance force

;ONE;;;;;;;;;;;;;;;;;;;;General Recommendations

#Persistent
OnExit, CleanUp


DVC:= ComObjCreate("Dragon.DgnVCmd")
DVC.Register("", 1)

DMnu:= DVC.MenuCreate("SomeRuleName", "", 0, "", 1)
DMnu.hWndMenu:=0
DMnu.Active:=True

LStr:=COMObjCreate("Dragon.DgnStrings")
Lstr.Add("banana")
Lstr.Add("apple")
DMnu.ListSetStrings("fruit", Lstr)
ObjRelease(Lstr)


;jupyter notebook

DMnu.Add(10, "run","SomeCategory","SomeDescription","{shift down}{enter}{shift up}",0)
DMnu.Add(10, "kernel","SomeCategory","SomeDescription","0 {sleep 10} 0{sleep 10}{enter}",0)

;bash

DMnu.Add(10, "boss","SomeCategory","SomeDescription","{text}sudo ",0)
DMnu.Add(10, "manual","SomeCategory","SomeDescription","{text}man ",0)
DMnu.Add(10, "echo","SomeCategory","SomeDescription","{text}echo ",0)
DMnu.Add(10, "modify","SomeCategory","SomeDescription","{text}chmod ",0)

DMnu.Add(10, "touch","SomeCategory","SomeDescription","{text}touch ",0)
DMnu.Add(10, "remove","SomeCategory","SomeDescription","{text}rm ",0)
DMnu.Add(10, "star","SomeCategory","SomeDescription","{*}",0)
DMnu.Add(10, "folder","SomeCategory","SomeDescription","{text}mkdir -p ",0)
DMnu.Add(10, "copy","SomeCategory","SomeDescription","{text}cp ",0)
DMnu.Add(10, "recursive","SomeCategory","SomeDescription","{text}{-r}",0)
DMnu.Add(10, "where","SomeCategory","SomeDescription","{text}pwd",0)
DMnu.Add(10, "who","SomeCategory","SomeDescription","{text}whoami",0)
DMnu.Add(10, "move","SomeCategory","SomeDescription","{text}mv",0)
DMnu.Add(10, "cat","SomeCategory","SomeDescription","{text}cat",0)
DMnu.Add(10, "system","SomeCategory","SomeDescription","{text}uname -a",0)
DMnu.Add(10, "dot dot","SomeCategory","SomeDescription","{text}..",0)
DMnu.Add(10, "pipe","SomeCategory","SomeDescription","{text}|",0)

DMnu.Add(10, "crack","SomeCategory","SomeDescription","{ctrl down}u{ctrl up}",0)
DMnu.Add(10, "redirect","SomeCategory","SomeDescription","{text}>",0)
DMnu.Add(10, "redirect left","SomeCategory","SomeDescription","{text}<",0)


DMnu.Add(10, "host","SomeCategory","SomeDescription","{text}hostname",0)
DMnu.Add(10, "host addresses","SomeCategory","SomeDescription","{text}hostname -I",0)
DMnu.Add(10, "list all details","SomeCategory","SomeDescription","{text}ls -al",0)
DMnu.Add(10, "list","SomeCategory","SomeDescription","{text}ls -l",0)

DMnu.Add(10, "less","SomeCategory","SomeDescription","{text}less",0)
DMnu.Add(10, "head","SomeCategory","SomeDescription","{text}head",0)
DMnu.Add(10, "tail","SomeCategory","SomeDescription","{text}tail",0)

DMnu.Add(10, "search","SomeCategory","SomeDescription","{text}grep",0)
DMnu.Add(10, "locate","SomeCategory","SomeDescription","{text}locate",0)
DMnu.Add(10, "find","SomeCategory","SomeDescription","{text}find",0)

DMnu.Add(10, "slash","SomeCategory","SomeDescription","{text}{/}",0)

DMnu.Add(10, "fly","SomeCategory","SomeDescription","{text}cd ",0)
DMnu.Add(10, "swim","SomeCategory","SomeDescription","{text}cd ..",0)
DMnu.Add(10, "hop","SomeCategory","SomeDescription","{text}cd /",0)
DMnu.Add(10, "moon","SomeCategory","SomeDescription","{text}etc",0)






DMnu.Add(15, "quotes","SomeCategory","SomeDescription","""""{Left 1}",0)
DMnu.Add(20, "function","SomeCategory","SomeDescription","def practice(foo):`r`t",0)
DMnu.Add(20, "class","SomeCategory","SomeDescription","class Foo():`r`t",0)
DMnu.Add(20, "initialize","SomeCategory","SomeDescription","def __init__(self, attrfoo, attrbar):`r`t",0)
DMnu.Add(20, "self","SomeCategory","SomeDescription","self.",0)
DMnu.Add(30, "for loop","SomeCategory","SomeDescription", "for x in y:`r`t",0)
DMnu.Add(40, "while loop","SomeCategory","SomeDescription", "while x in y:`r`t",0)
DMnu.Add(40, "bracket one","SomeCategory","SomeDescription", "(){Left 1}",0)
DMnu.Add(40, "bracket two","SomeCategory","SomeDescription", "{{}{}}{Left 1}",0)
DMnu.Add(40, "bracket three","SomeCategory","SomeDescription", "[]{Left 1}",0)
DMnu.Add(40, "colon","SomeCategory","SomeDescription", ":`r`t",0)
DMnu.Add(40, "plus plus","SomeCategory","SomeDescription", "{text}+= 1",0)
DMnu.Add(40, "is","SomeCategory","SomeDescription", "{text}=",0)
DMnu.Add(40, "equal equal","SomeCategory","SomeDescription", "{text}==",0)
DMnu.Add(40, "minus","SomeCategory","SomeDescription", "{text}-",0)
DMnu.Add(40, "times","SomeCategory","SomeDescription", "{text}*",0)
DMnu.Add(40, "bop","SomeCategory","SomeDescription", "{end}",0)
DMnu.Add(40, "slip","SomeCategory","SomeDescription", "{enter}",0)


DMnu.Add(40, "one counter","SomeCategory","SomeDescription", "{text}counter += 1",0)
DMnu.Add(40, "comment","SomeCategory","SomeDescription", "{#}",0)
DMnu.Add(40, "comment comment","SomeCategory","SomeDescription", """""""""{backspace 1}",0)


;cursor
DMnu.Add(100, "home","SomeCategory","SomeDescription", "{home}",0)
DMnu.Add(101, "end","SomeCategory","SomeDescription", "{end}",0)
DMnu.Add(102, "up","SomeCategory","SomeDescription", "{up}",0)
DMnu.Add(103, "down","SomeCategory","SomeDescription", "{down}",0)
DMnu.Add(102, "up up","SomeCategory","SomeDescription", "{up 5}",0)
DMnu.Add(102, "up up up","SomeCategory","SomeDescription", "{up 15}",0)
DMnu.Add(103, "down down","SomeCategory","SomeDescription", "{down 5}",0)
DMnu.Add(103, "down down down","SomeCategory","SomeDescription", "{down 15}",0)


DMnu.Add(104, "left","SomeCategory","SomeDescription", "{left}",0)
DMnu.Add(105, "right","SomeCategory","SomeDescription", "{right}",0)
DMnu.Add(104, "left left","SomeCategory","SomeDescription", "{ctrl down}{left}{ctrl up}",0)
DMnu.Add(105, "right right","SomeCategory","SomeDescription", "{ctrl down}{right}{ctrl up}",0)
DMnu.Add(105, "skip","SomeCategory","SomeDescription", "{Ctrl down}{right}{Ctrl up}",0)
DMnu.Add(105, "skip skip","SomeCategory","SomeDescription", "{Ctrl down}{right 2}{Ctrl up}",0)
DMnu.Add(105, "skip skip skip","SomeCategory","SomeDescription", "{Ctrl down}{right 3}{Ctrl up}",0)
DMnu.Add(105, "skip skip skip skip","SomeCategory","SomeDescription", "{Ctrl down}{right 4}{Ctrl up}",0)
DMnu.Add(105, "fall","SomeCategory","SomeDescription", "{Ctrl down}{left}{Ctrl up}",0)
DMnu.Add(105, "fall fall","SomeCategory","SomeDescription", "{Ctrl down}{left 2}{Ctrl up}",0)
DMnu.Add(105, "fall fall fall","SomeCategory","SomeDescription", "{Ctrl down}{left 3}{Ctrl up}",0)
DMnu.Add(105, "fall fall fall fall","SomeCategory","SomeDescription", "{Ctrl down}{left 4}{Ctrl up}",0)

DMnu.Add(104, "page up","SomeCategory","SomeDescription", "{pgup}",0)
DMnu.Add(105, "page down","SomeCategory","SomeDescription", "{pgdn}",0)
DMnu.Add(104, "page up up","SomeCategory","SomeDescription", "{Ctrl down}{home}{Ctrl up}",0)
DMnu.Add(105, "page down down","SomeCategory","SomeDescription", "{Ctrl down}{end}{Ctrl up}",0)


DMnu.Add(105, "slip","SomeCategory","SomeDescription", "{enter}",0)
DMnu.Add(105, "slip slip","SomeCategory","SomeDescription", "{enter 5}",0)
DMnu.Add(105, "slip slip slip","SomeCategory","SomeDescription", "{enter 15}",0)

DMnu.Add(200, "no no no","SomeCategory","SomeDescription", "{shift down}{home}{del}{shift up}",0)
DMnu.Add(201, "go go go","SomeCategory","SomeDescription", "{shift down}{end}{del}{shift up}",0)


DMnu.Add(105, "fire","SomeCategory","SomeDescription", "{Ctrl down}{shift down}{right}{shift up}{Ctrl up}",0)
DMnu.Add(105, "fire fire","SomeCategory","SomeDescription", "{Ctrl down}{shift down}{right 2}{shift up}{Ctrl up}",0)
DMnu.Add(105, "fire fire fire","SomeCategory","SomeDescription", "{Ctrl down}{shift down}{right 5}{shift up}{Ctrl up}",0)
DMnu.Add(105, "fire fire fire fire","SomeCategory","SomeDescription", "{Ctrl down}{shift down}{right 10}{shift up}{Ctrl up}",0)
DMnu.Add(105, "water","SomeCategory","SomeDescription", "{Ctrl down}{shift down}{left 1}{shift up}{Ctrl up}",0)
DMnu.Add(105, "water water","SomeCategory","SomeDescription", "{Ctrl down}{shift down}{left 2}{shift up}{Ctrl up}",0)
DMnu.Add(105, "water water water","SomeCategory","SomeDescription", "{Ctrl down}{shift down}{left 5}{shift up}{Ctrl up}",0)
DMnu.Add(105, "water water water water","SomeCategory","SomeDescription", "{Ctrl down}{shift down}{left 10}{shift up}{Ctrl up}",0)

DMnu.Add(202, "select down","SomeCategory","SomeDescription", "{shift down}{down 5}{shift up}",0)
DMnu.Add(202, "select up","SomeCategory","SomeDescription", "{shift down}{up 5}{shift up}",0)
DMnu.Add(202, "select down down","SomeCategory","SomeDescription", "{shift down}{down 10}{shift up}",0)
DMnu.Add(202, "select up down","SomeCategory","SomeDescription", "{shift down}{up 10}{shift up}",0)
DMnu.Add(202, "select down down down","SomeCategory","SomeDescription", "{shift down}{down 20}{shift up}",0)
DMnu.Add(202, "select up up up","SomeCategory","SomeDescription", "{shift down}{up 20}{shift up}",0)
DMnu.Add(202, "select all","SomeCategory","SomeDescription", "{ctrl down}{a}{ctrl up}",0)

DMnu.Add(202, "copy line","SomeCategory","SomeDescription", "{end}{shift down}{home}{shift up}{ctrl down}{c}{ctrl up}",0)
DMnu.Add(202, "cut line","SomeCategory","SomeDescription", "{end}{shift down}{home}{shift up}{ctrl down}{x}{ctrl up}",0)
DMnu.Add(202, "copy right","SomeCategory","SomeDescription", "{shift down}{end}{shift up}{ctrl down}{c}{ctrl up}",0)
DMnu.Add(202, "copy left","SomeCategory","SomeDescription", "{shift down}{home}{shift up}{ctrl down}{c}{ctrl up}",0)
DMnu.Add(202, "copy all","SomeCategory","SomeDescription", "{ctrl down}{a}{c}{ctrl up}",0)

DMnu.Add(202, "copy","SomeCategory","SomeDescription", "{ctrl down}{c}{ctrl up}",0)
DMnu.Add(202, "cut","SomeCategory","SomeDescription", "{ctrl down}{x}{ctrl up}",0)
DMnu.Add(202, "paste","SomeCategory","SomeDescription", "{ctrl down}{v}{ctrl up}",0)

DMnu.Add(105, "zed","SomeCategory","SomeDescription", "{ctrl down}{z}{ctrl up}}",0)
DMnu.Add(105, "why","SomeCategory","SomeDescription", "{ctrl down}{y}{ctrl up}",0)



;browser
DMnu.Add(105, "whack","SomeCategory","SomeDescription", "{alt down}{tab}",0)
DMnu.Add(105, "whack whack","SomeCategory","SomeDescription", "{tab 2}",0)
DMnu.Add(105, "whack whack whack","SomeCategory","SomeDescription", "{tab 3}",0)
DMnu.Add(105, "whack whack whack whack","SomeCategory","SomeDescription", "{tab 4}",0)
DMnu.Add(105, "unwhack","SomeCategory","SomeDescription", "{alt up}",0)
DMnu.Add(105, "bridge","SomeCategory","SomeDescription", "{alt down}{tab}{alt up}",0)

DMnu.Add(105, "new window","SomeCategory","SomeDescription", "{ctrl down}{n}{ctrl up}",0)
DMnu.Add(105, "new tab","SomeCategory","SomeDescription", "{ctrl down}{t}{ctrl up}",0)
DMnu.Add(105, "hack","SomeCategory","SomeDescription", "{ctrl down}{tab}{ctrl up}",0)
DMnu.Add(105, "hack hack","SomeCategory","SomeDescription", "{ctrl down}{tab}{tab}{ctrl up}",0)
DMnu.Add(105, "hack hack hack","SomeCategory","SomeDescription", "{ctrl down}{tab}{tab}{tab}{ctrl up}",0)
DMnu.Add(105, "hack hack hack hack","SomeCategory","SomeDescription", "{ctrl down}{tab}{tab}{tab}{tab}{ctrl up}",0)

DMnu.Add(105, "back","SomeCategory","SomeDescription", "{ctrl down}{pgup}{ctrl up}",0)
DMnu.Add(105, "back back","SomeCategory","SomeDescription", "{ctrl down}{pgup}{pgup}{ctrl up}",0)
DMnu.Add(105, "back back back","SomeCategory","SomeDescription", "{ctrl down}{pgup}{pgup}{pgup}{ctrl up}",0)
DMnu.Add(105, "back back back back","SomeCategory","SomeDescription", "{ctrl down}{pgup}{pgup}{pgup}{ctrl up}",0)

DMnu.Add(105, "search","SomeCategory","SomeDescription", "{alt down}{d}{alt up}",0)

;windows navigation

DMnu.Add(105, "desktop","SomeCategory","SomeDescription", "{RWin down}d{RWin up}",0)
DMnu.Add(105, "close window","SomeCategory","SomeDescription", "{alt down}{f4}{alt up}",0)
DMnu.Add(105, "die","SomeCategory","SomeDescription", "{ctrl down}{f4}{ctrl up}",0)
DMnu.Add(105, "tab","SomeCategory","SomeDescription", "{tab}",0)
DMnu.Add(105, "save","SomeCategory","SomeDescription", "{ctrl down}{s}{ctrl up}",0)


;text manipulation
DMnu.Add(105, "kill","SomeCategory","SomeDescription", "{delete}",0)
DMnu.Add(105, "kill down","SomeCategory","SomeDescription", "{delete 20}",0)
DMnu.Add(105, "kill down down","SomeCategory","SomeDescription", "{delete 50}",0)
DMnu.Add(105, "kill up","SomeCategory","SomeDescription", "{backspace 20}",0)
DMnu.Add(105, "kill up up","SomeCategory","SomeDescription", "{backspace 50}",0)
DMnu.Add(105, "rub","SomeCategory","SomeDescription", "{backspace}",0)
DMnu.Add(105, "smoke","SomeCategory","SomeDescription", "{Ctrl down}{right}{Ctrl up}{ctrl down}{backspace}{ctrl up}",0)
DMnu.Add(105, "one kill","SomeCategory","SomeDescription", "{ctrl down}{delete}{ctrl up}",0)
DMnu.Add(105, "two kill","SomeCategory","SomeDescription", "{ctrl down}{delete}{delete}{ctrl up}",0)
DMnu.Add(105, "one rub","SomeCategory","SomeDescription", "{backspace 3}",0)
DMnu.Add(105, "two rub","SomeCategory","SomeDescription", "{backspace 6}",0)
DMnu.Add(105, "three rub","SomeCategory","SomeDescription", "{backspace 10}",0)



ComObjConnect(DVC, "On_")
Return

On_CommandRecognize(pcom,pID,pact,plist)
{
   commandptr := NumGet(ComObjValue(pcom),0,"Ptr")
   command := StrGet(commandptr)
   id := NumGet(ComObjValue(pID),0,"int")
   actptr := NumGet(ComObjValue(pact),0,"Ptr")
   act := StrGet(actptr)

   listp := NumGet(ComObjValue(plist),0,"Ptr")
   lp := ComObject(9,listp,1)
   listcnt := lp.Count
   if listcnt>0
   {
     listit := lp.Item(1)
   }
   else listit:=""

   Send %act%
}


CleanUp:
DVC.UnRegister()
ObjRelease(DVC)
ExitApp
F12:: ExitApp

f1:: ; Suspend variant
Run "Pausefanshawecorrection.ahk" ; Will launch or relaunch (thus unsuspending) script #2
Suspend ; Will suspend script #1
return


