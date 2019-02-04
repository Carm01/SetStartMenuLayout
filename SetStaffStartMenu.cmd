cd /d "%~dp0"

::copy LayoutModification_Staff.xml C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification_Staff.xml /y* /y
::ren C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\DefaultLayouts.xml DefaultLayouts.tmp

IF EXIST "C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\DefaultLayouts.xml" (
  xcopy LayoutModification_Staff.xml C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification_Staff.xml* /y
  ren C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\DefaultLayouts.xml DefaultLayouts.tmp
  :: optional to delete instead
 :: del C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\DefaultLayouts.xml
) ELSE (
  xcopy LayoutModification_Staff.xml C:\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification_Staff.xml* /y
)

xcopy "Internet Explorer.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Internet Explorer.lnk"* /y




