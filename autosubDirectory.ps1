
$directoryPath = Read-Host -Prompt 'Input your directory path '
$files = Get-ChildItem $directoryPath
foreach ($f in $files){
	$cmd = '	&   autosub -S en -D en "' + $f.FullName +'"'
	Invoke-Expression $cmd
}
pause