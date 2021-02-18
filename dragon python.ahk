
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

;python

DMnu.Add(10, "no print","SomeCategory","SomeDescription","print(){Left 1}",0)
DMnu.Add(10, "print","SomeCategory","SomeDescription","print("" ""){Left 3}",0)

DMnu.Add(15, "quotes","SomeCategory","SomeDescription","""""{Left 1}",0)
DMnu.Add(20, "function","SomeCategory","SomeDescription","def practice(foo):",0)
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


DMnu.Add(40, "one counter","SomeCategory","SomeDescription", "{text}counter += 1",0)
DMnu.Add(40, "comment","SomeCategory","SomeDescription", """""""""{backspace 1}",0)


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


DMnu.Add(105, "enter","SomeCategory","SomeDescription", "{enter}",0)
DMnu.Add(105, "enter enter","SomeCategory","SomeDescription", "{enter 5}",0)
DMnu.Add(105, "enter enter enter","SomeCategory","SomeDescription", "{enter 15}",0)

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
DMnu.Add(105, "one kill","SomeCategory","SomeDescription", "{ctrl down}{delete}{ctrl up}",0)
DMnu.Add(105, "two kill","SomeCategory","SomeDescription", "{ctrl down}{delete}{delete}{ctrl up}",0)
DMnu.Add(105, "one rub","SomeCategory","SomeDescription", "{ctrl down}{backspace}{ctrl up}",0)
DMnu.Add(105, "two rub","SomeCategory","SomeDescription", "{ctrl down}{backspace}{backspace}{ctrl up}",0)

DMnu.Add(105, "Washer hollering","SomeCategory","SomeDescription", "demo chinese language I'm a good person",0)


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


