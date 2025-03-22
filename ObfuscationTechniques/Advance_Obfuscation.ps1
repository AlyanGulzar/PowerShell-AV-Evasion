# Advanced Obfuscation: Combining multiple techniques
$part1 = "Sta" + 'Rt-Pr'
$part2 = 'oc' + "EsS"
$payload = "$PSHOME\powershell.exe -ArgumentList { WriTe-Output 'Advanced Obfuscation!' } -WindowStyle Hidden"
Invoke-Expression "$part1$part2 $payload"
