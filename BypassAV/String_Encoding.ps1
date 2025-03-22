# Encoding the payload to evade AV
$command = "Write-Output 'Hello, Encoded World!'"
$bytes = [System.Text.Encoding]::Unicode.GetBytes($command)
$encoded = [Convert]::ToBase64String($bytes)
powershell -EncodedCommand $encoded
