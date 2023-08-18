Set objShell = CreateObject("Shell.Application")
objShell.ShellExecute "cmd.exe", "/c netsh int ip reset & ipconfig /release & ipconfig /renew & ipconfig /flushdns", "", "runas", 1