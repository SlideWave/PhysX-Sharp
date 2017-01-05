set SWIG_EXE="C:\Program Files\swigwin-3.0.11\swig.exe"
set PHYSX_INC="C:\Proj\slidewave\moses\PhysX-3.3\PhysXSDK\Include"

mkdir gen
%SWIG_EXE% -features autodoc=1 -csharp -c++ -namespace SlideWave.PhysxSharp -I%PHYSX_INC% -outdir gen PhysX.i



set DEFINES=/D "WIN32" /D "WIN64" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE" /D "_WINSOCK_DEPRECATED_NO_WARNINGS" /D "NDEBUG"
set INCLUDES=/I %PHYSX_INC%

cl /RTC1 /ZI /Zc:forScope /MT /EHs %DEFINES% %INCLUDES% /LD physx_wrap.cxx /Fe_physx.dll
