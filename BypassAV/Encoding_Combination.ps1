# Combining Encoding and Obfuscation
$cmd = "powershell -c ""W`ri'Te-Output 'Hello, Combined!'"""
$bytes = [System.Text.Encoding]::Unicode.GetBytes($cmd)
$encoded = [Convert]::ToBase64String($bytes)
Invoke-Expression "powershell -EncodedCommand $encoded"
