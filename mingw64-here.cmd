setlocal
cd /D %~dp0
for %%i in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
    if exist %%i:\msys64 (
        set "MSYS_ROOT=%%i:\msys64"
        goto :msys_found
    )
)
:msys_found
if not "%MSYS_ROOT%" == "" (
    "%MSYS_ROOT%\msys2_shell.cmd" -here -mingw64
) else (
    pause
)
