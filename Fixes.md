Fixes:  
[Pathing VSCode Terminals](#pathing-issue-for-vscode-integrated-terminals)

### Pathing Issue for vscode integrated terminals:

reminder to add   
try this on settings json:  
```
"terminal.integrated.env.windows": {
    "PATH": "${env:PATH}"
}
```
(if that works, delete the whole object on settings to default the path)

if not this:   
`$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH", "Machine") + ";" + [System.Environment::GetEnvironmentVariable("PATH", "User")`  
then check with   
`echo $env:PATH`

fixing path issues with windows with installing for System PATH variables   
cmd commands:   

`sfc /scannow`  
`DISM /Online /Cleanup-Image /RestoreHealth `
