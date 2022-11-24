

SETLOCAL

SET CDir=%~dp0%
SET PasDoc=c:\PasDoc\bin\pasdoc.exe

CALL "%PasDoc%" "..\Glfw33\glfw.pas" || PAUSE