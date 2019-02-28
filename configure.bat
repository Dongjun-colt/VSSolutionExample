@for %%P in (x86 x64) do (
	@for %%C in (Debug Release) do (
		@mkdir bin\%%P\%%C
	)
)
@mkdir downloads
@mkdir vendors

@rem DirectX Feb 2010
@if not exist .\vendors\DirectXFeb2010 (
	@if not exist .\downloads\DirectXFeb2010.zip (
		@.\tools\wget -O .\downloads\DirectXFeb2010.zip https://www.taemin.site/packages/DirectX/DirectXFeb2010.zip
	)
	@unzip -d vendors\DirectXFeb2010 -o .\downloads\DirectXFeb2010.zip
)
@for %%P in (x86 x64) do (
	@robocopy vendors\DirectXFeb2010\bin\%%P bin\%%P\Debug
	@robocopy vendors\DirectXFeb2010\bin\%%P bin\%%P\Release	
	@copy /Y vendors\DirectXFeb2010\dxwebsetup.exe bin\%%P\Release
)
