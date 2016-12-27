set SWIG_EXE="C:\Program Files (x86)\swigwin-3.0.10\swig.exe"
set PHYSX_INC="C:\Projects\slidewave\PhysX-3.3-3.3.4-1.3.4\PhysXSDK\Include"

mkdir gen
%SWIG_EXE% -features autodoc=1 -csharp -c++ -I%PHYSX_INC% -outdir gen PhysX.i
