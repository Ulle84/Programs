;###############################################################################
; Shortcuts
;###############################################################################
#a::
IfWinExist, MatrixKit
  WinActivate ; use the window found above
else
  Run "D:\CMake\MatrixKit\trunk\build\MatrixKit.sln"
Return

#b::
IfWinExist, Beyond Compare
  WinActivate ; use the window found above
else
  Run "C:\Program Files (x86)\Beyond Compare 4\BCompare.exe"
Return

#c::
IfWinExist, DoubleCommander
  WinActivate ; use the window found above
else
  Run "C:\ube\PortablePrograms\doublecmd\doublecmd.exe"
Return

#n::
Run "C:\ube\PortablePrograms\Notepad++\Notepad++.exe" "D:\ube\WorkDocumentation\DailyNotes.md"
Return

#h::
Run "C:\ube\PortablePrograms\Notepad++\Notepad++.exe" "C:\ube\AutoHotKey\Shortcuts.ahk"
Return

;IfWinExist, Notepad++
;  WinActivate ; use the window found above
;else
;  Run "C:\ube\PortablePrograms\Notepad++\Notepad++.exe" "D:\ube\WorkDocumentation\DailyNotes.md"
;Return

#v::
IfWinExist, VernissageKit
  WinActivate ; use the window found above
else
  Run "D:\CMake\VernissageKit\trunk\build\VernissageKit.sln"
Return

;###############################################################################
; Remapping of german "Umlaute"
;###############################################################################
^ä::
SendInput {{}{}}{Left 1}
return

^ö::
SendInput {(}{)}{Left 1}
return

^ü::
SendInput {[}{]}{Left 1}
return

;###############################################################################
; hotstrings - triggered with '#'
;###############################################################################

;-------------------------------------------------------------------------------
; C++
;-------------------------------------------------------------------------------
:*:a#::{&}{&}{Space}
:*:bh#::int test = rand();{F9}
:*:c#::''{Left}
:*:cql#::const QList<>&{Space}{Left}{Left}{Left}
:*:cqs#::const QString&{Space}
:*:cqsl#::const QStringList&{Space}
:*:en#::!={Space}
:*:eq#::=={Space}
:*:f#::false
:*:lc#::m_log.critical(""){;}{Left 3}
:*:ld#::m_log.debug(""){;}{Left 3}
:*:le#::m_log.error(""){;}{Left 3}
:*:lf#::m_log.flush(){;}
:*:li#::m_log.info(""){;}{Left 3}
:*:ls#::L""{Left}
:*:lt#::m_log.trace(""){;}{Left 3}
:*:lw#::m_log.warn(""){;}{Left 3}
:*:o#::{|}{|}{Space}
:*:qd#::qDebug() << {;}{Left 1}
:*:qds#::qDebug() << ""{;}{Left 2}
:*:ql#::QList<>{Left}
:*:qm#::QMap<>{Left}
:*:qs#::QString
:*:qsl#::QStringList
:*:r#::return {;}{Left}
:*:rc#::return ''{;}{Left 2}
:*:rf#::return false{;}
:*:ro#::return 0{;}
:*:roo#::return 0.0{;}
:*:rs#::return ""{;}{Left 2}
:*:rt#::return true{;}
:*:s#::""{Left}
:*:t#::true
; :*:oe#::ö
; :*:ae#::ä
; :*:ue#::ü

; dynamic cast
:*:dc#::
SendInput %clipboard%* p%clipboard% = dynamic_cast<%clipboard%*>(){;}{Enter}if (p%clipboard%){Enter}{{}{Enter}{Enter}{}}{up 4}{End}{left 2}
return

; #include "clipboard"
:*:in#::
SendInput {#}include "%clipboard%"
return

; #include <clipboard>
:*:inc#::
SendInput {#}include <%clipboard%>
return

; for loop iterator
:*:it#::
SendInput for (it = %clipboard%.begin(); it {!}= %clipboard%.end(); {+}{+}it){Enter}{{}{Enter}{Enter}{}}{Up}{Tab}
return

; for loop iterator 2
:*:it2#::
SendInput for (it2 = %clipboard%.begin(); it2 {!}= %clipboard%.end(); {+}{+}it2){Enter}{{}{Enter}{Enter}{}}{Up}{Tab}
return

; for loop iterator 3
:*:it3#::
SendInput for (it3 = %clipboard%.begin(); it3 {!}= %clipboard%.end(); {+}{+}it3){Enter}{{}{Enter}{Enter}{}}{Up}{Tab}
return

; for loop iterator 4
:*:it4#::
SendInput for (it4 = %clipboard%.begin(); it4 {!}= %clipboard%.end(); {+}{+}it4){Enter}{{}{Enter}{Enter}{}}{Up}{Tab}
return

; for loop iterator - auto
:*:ita#::
SendInput for (auto it = %clipboard%.begin(); it {!}= %clipboard%.end(); {+}{+}it){Enter}{{}{Enter}{Enter}{}}{Up}{Tab}
return

; for loop iterator 2 - auto
:*:ita2#::
SendInput for (auto it2 = %clipboard%.begin(); it2 {!}= %clipboard%.end(); {+}{+}it2){Enter}{{}{Enter}{Enter}{}}{Up}{Tab}
return

; for loop iterator 3 - auto
:*:ita3#::
SendInput for (auto it3 = %clipboard%.begin(); it3 {!}= %clipboard%.end(); {+}{+}it3){Enter}{{}{Enter}{Enter}{}}{Up}{Tab}
return

; for loop iterator 4 - auto
:*:ita4#::
SendInput for (auto it4 = %clipboard%.begin(); it4 {!}= %clipboard%.end(); {+}{+}it4){Enter}{{}{Enter}{Enter}{}}{Up}{Tab}
return

; member asignment
:*:ma#::
SendInput m_%clipboard% = %clipboard%{;}
return

; hashtag
:*:tag#::
SendInput //{Space}{#}_UBE{Space}
return

;-------------------------------------------------------------------------------
; Qt Slots
;-------------------------------------------------------------------------------
:*:oc#::
SendInput void on_%clipboard%_clicked();
return

:*:ot#::
SendInput void on_%clipboard%_triggered();
return

:*:otc#::
SendInput void on_%clipboard%_textChanged();
return

;-------------------------------------------------------------------------------
; HTML + CSS + JavaScript
;-------------------------------------------------------------------------------
; TODO

;-------------------------------------------------------------------------------
; AutoHotKey
;-------------------------------------------------------------------------------
:*:st#::{{}shift down{}}{{}left {}}{{}shift up{}}{left 11} ; select text

;-------------------------------------------------------------------------------
; Commit Comments
;-------------------------------------------------------------------------------
:*:as#::* formated by AStyle
:*:cc#::* code cleaned
:*:ew#::* eliminated warnings
:*:ic#::{+} initial commit
:*:mac#::{#} fixed merge accident
:*:po#::* performance optimization
:*:ref#::* refactoring
:*:sri#::-> see Redmine issue http://detau_rdp811.i.omicron.de/redmine/issues/issueNumber{shift down}{left 11}{shift up}
:*:uc#::* under construction

;-------------------------------------------------------------------------------
; Markdown
;-------------------------------------------------------------------------------

; code block
:*:mcb#::
SendInput {ASC 96}{ASC 96}{ASC 96}{Enter}{Enter}{ASC 96}{ASC 96}{ASC 96}{Up}
return

; daily notes
:*:dn#::
FormatTime, CurrentDateTime,, ddd dd.MM.yyyy
;SendInput {Enter}{#}{#} %CurrentDateTime%{Esc}{Enter}*{Space}Administratives{Enter}{Space 2}*{Space}{Enter}{Backspace 2}*{Space}Build & Release{Enter}{Space 2}*{Space}{Enter}{Backspace 2}*{Space}MatrixKit{Enter}{Space 2}*{Space}{Enter}{Backspace 2}*{Space}VernissageKit{Enter}{Space 2}*{Space}{Enter}{Backspace 2}
SendInput {Enter}{#}{#} %CurrentDateTime%{Enter}*{Space}{Enter}{up}{end}
return

; image
:*:mi#::
SendInput {!}{[}{]}(%clipboard%)
return

; link
:*:ml#::
SendInput {[}{]}(%clipboard%)
return

; redmine link
:*:rl#::
SendInput {[}Redmine{]}(%clipboard%)
return

;-------------------------------------------------------------------------------
; Textile
;-------------------------------------------------------------------------------
:*:1#::{!}{!}{left}
:*:cpp#::<pre><code class="cpp">{Enter 2}</code></pre>{Up}
:*:p#::<pre>{Enter 2}</pre>{Up}
:*:q#::@@{left}
:*:tab#::|_. A |_. B |_. C |{Enter}| A | B | C |{Enter}|/2. row span | B | C |{Enter}|\2. col span |
:*:tl#::""{:}http{: 2}//link{shift down}{left 12}{shift up}
:*:tn#::{{}{{}thumbnail(){}}{}}{left 3}
:*:wp#::[[id|description]]{left 2}{shift down}{left 11}{shift up}
:*:xml#::<pre><code class="xml">{Enter 2}</code></pre>{Up}

; attachment
:*:att#::
SendInput attachment:"%clipboard%"
return

; image
:*:ti#::
SendInput {!}%clipboard%{!}
return

; corrected to
:*:cor#::
(
@code-file@

| wrong | @@ |
| corrected to | @@ |
)

;-------------------------------------------------------------------------------
; CMake
;-------------------------------------------------------------------------------
:*:m#::message(){left 1}
:*:mv#::message({$}{{}{}}){left 2}
:*:va#::{$}{{}{}}{left 1}


;-------------------------------------------------------------------------------
; Signatures
;-------------------------------------------------------------------------------

; rem signuture
:*:rsig#::
FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm
SendInput rem %CurrentDateTime% UBE
return

; rem signature short
:*:rsigs#::
FormatTime, CurrentDateTime,, yyyy-MM-dd
SendInput rem %CurrentDateTime% UBE
return

; signature
:*:sig#::
FormatTime, CurrentDateTime,, yyyy-MM-dd (ddd) HH:mm
SendInput %CurrentDateTime% UBE
return

; signature short
:*:sigs#::
FormatTime, CurrentDateTime,, yyyy-MM-dd
SendInput %CurrentDateTime% UBE
return

;-------------------------------------------------------------------------------
; Date & Time
;-------------------------------------------------------------------------------

; heute - german time format
:*:h#::
FormatTime, CurrentDateTime,, dd.MM.yyyy
SendInput %CurrentDateTime%
return

; gestern - german time format
:*:g#::
var1 =  ; Make it blank so that the below will use the current time instead.
var1 += -1, days
FormatTime, Yesterday, %var1%, dd.MM.yyyy
SendInput %Yesterday%
return

; today
:*:td#::
FormatTime, CurrentDateTime,, yyyy-MM-dd
SendInput %CurrentDateTime%
return

; tomorrow
:*:tm#::
var1 =  ; Make it blank so that the below will use the current time instead.
var1 += 1, days
FormatTime, Tomorrow, %var1%, yyyy-MM-dd
SendInput %Tomorrow%
return

; yesterday
:*:ys#::
var1 =  ; Make it blank so that the below will use the current time instead.
var1 += -1, days
FormatTime, Yesterday, %var1%, yyyy-MM-dd
SendInput %Yesterday%
return

; current date and time
:*:dt#::
FormatTime, CurrentDateTime,, yyyy-MM-dd hh:mm
SendInput %CurrentDateTime%
return

; current time
:*:ti#::
FormatTime, CurrentDateTime,, hh:mm
SendInput %CurrentDateTime%
return

; last change
:*:lc#::
FormatTime, CurrentDateTime,, yyyy-MM-dd hh:mm
SendInput Last change by Ulrich Belitz on %CurrentDateTime%
return

;-------------------------------------------------------------------------------
; Misc
;-------------------------------------------------------------------------------
:*:-#::--------------------------------------------------------------------------------
:*:_#::________________________________________________________________________________
:*:acc#::accidentally
:*:acq#::acquisition
:*:adm#::Administratives
:*:ahk#::AutoHotKey
:*:av#::available
:*:br#::Build & Release
:*:btw#::by the way
:*:bzgl#::bezüglich
:*:ci#::Continous Improvement
:*:desc#::description
:*:dev#::development
:*:devenv#::development environment
:*:dir#::directory
:*:dm#::{$}FUNCTION{Space}
:*:du#::Danke{Space}und{Space}
:*:edp#::ESpDepthProfile
:*:en#::enabled
:*:env#::environment
:*:eof#::end of file - only comments following
:*:fyi#::for your information
:*:ggf#::gegebenfalls
:*:ich#::ich (Ulrich Belitz)
:*:im#::immediately
:*:lg#::Liebe Grüße`nUlle
:*:mfg#::Mit freundlichen Grüßen
:*:mk#::MatrixKit
:*:mn#::mnemonic
:*:mws#::<MainWindowSettings xPos="0" yPos="0" width="522" height="80"/>
:*:nc#::no comment
:*:nec#::necessary
:*:ri#::Redmine issue http://detau_rdp811.i.omicron.de/redmine/issues/issueNumber{shift down}{left 11}{shift up}
:*:rle#::Region List Editor
:*:shs#::siehe anhängenden Screenshot
:*:sm#::Service Meeting
:*:so#::ScientaOmicron
:*:suc#::success
:*:sucf#::successfully
:*:unnec#::unnecessary
:*:v#::Vernissage
:*:vd#::Vielen Dank{!}
:*:vdiv#::Vielen Dank im Voraus{!}
:*:vis#::visible
:*:visu#::visualization
:*:vk#::VernissageKit
:*:vs#::Visual Studio
:*:vs13#::Visual Studio 2013
:*:zb#::zum Beispiel
:*:zdi#::Zu Deiner Information
:*:zi#::Zurich Instruments


; bug report for redmine
:*:bug#::
(
*software version:*
*pre-condition:*
*trigger:*
*expected behaviour:*
*findings:*
*log-file/trace:*
*screenshot:*
)

;-------------------------------------------------------------------------------
; Login
;-------------------------------------------------------------------------------
:*:rm#::ube{tab}rmiegttza{enter}

;-------------------------------------------------------------------------------
; auto correction
;-------------------------------------------------------------------------------
; Syntax:   :*:typedWrong::typedCorrectly
; trigger is not case sensitive
;-------------------------------------------------------------------------------
:*:Pyhton::Python
:*:anohter::another
:*:baord::board
:*:geschreiben::geschrieben
:*:gschrieben::geschrieben
:*:nicth::nicht
:*:postion::position
:*:widht::width
:*:fasle::false
:*:Vorberetiung::Vorbereitung

;-------------------------------------------------------------------------------
; appended by AutoHotKeyHelper
;-------------------------------------------------------------------------------