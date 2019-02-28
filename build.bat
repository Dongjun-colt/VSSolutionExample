@if "%VS140COMNTOOLS%"=="" goto error_no_VS140COMNTOOLSDIR
@call "%VS140COMNTOOLS%..\..\VC\vcvarsall.bat"

@call ./configure.bat

@if "%1" == "" goto :buildall
@if "%1" == "Release" goto :buildrelease

:buildall
@for %%P in (x86 x64) do (
	@for %%C in (Debug Release) do (
		devenv /Rebuild "%%C|%%P" VSSolutionExample.sln
	)
)
@goto end

:buildrelease
@for %%P in (x86 x64) do (
	devenv /Rebuild "Release|%%P" VSSolutionExample.sln
)
@goto end


@REM -----------------------------------------------------------------------
:error_no_VS140COMNTOOLSDIR
@echo ERROR: Cannot determine the location of the VS Common Tools folder.
@goto end

:end