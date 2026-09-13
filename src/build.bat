@echo off
REM Run from a "Developer Command Prompt for VS" (x86), or from a normal
REM prompt after calling vcvarsall.bat x86 / VsDevCmd.bat -arch=x86 first.
lib /def:core.def /out:core.lib /machine:x86
cl /c /I. /D WIN32 /D NDEBUG /D _WINDOWS /D _USRDLL /D TILTFIX_EXPORTS /D _WINDLL /D _UNICODE /D UNICODE /EHsc /MT /Fo.\ dllmain.cpp tiltFix.cpp
link /DLL /OUT:TiltFix.dll /MACHINE:X86 dllmain.obj tiltFix.obj core.lib kernel32.lib user32.lib
