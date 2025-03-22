
# PowerShell Antivirus Evasion and Obfuscation Techniques

## Introduction
This repository provides various techniques to evade antivirus detection and obfuscate PowerShell scripts. The main focus is on using alternating single and double quotes, along with encoding and encryption methods to bypass security mechanisms.

## Project Structure
```
.
├── README.md              # Main project documentation
├── ObfuscationTechniques  # Directory containing different obfuscation methods
│   ├── simple_obfuscation.ps1
│   ├── quote_alternation.ps1
│   └── advanced_obfuscation.ps1
├── BypassAV                # Directory for antivirus evasion techniques
│   ├── string_encoding.ps1
│   ├── encoding_combination.ps1
│   └── script_encryption.ps1
└── Examples                # Practical examples of evasion techniques
    ├── reverse_shell.ps1
    └── download_execute.ps1
```

## Obfuscation Techniques
### 1. Simple Obfuscation ([simple_obfuscation.ps1](https://github.com/AlyanGulzar/PowerShell-AV-Evasion/blob/main/ObfuscationTechniques/Simple_Obfuscation.ps1))
Basic obfuscation techniques to make the script harder to analyze. Uses variable renaming and string concatenation.

### 2. Quote Alternation ([quote_alternation.ps1](https://github.com/AlyanGulzar/PowerShell-AV-Evasion/blob/main/ObfuscationTechniques/Quote_Alternation.ps1))
Utilizes alternating single and double quotes to break static detection rules.

### 3. Advanced Obfuscation ([advanced_obfuscation.ps1](https://github.com/AlyanGulzar/PowerShell-AV-Evasion/blob/main/ObfuscationTechniques/Advance_Obfuscation.ps1))
Combines multiple obfuscation techniques to increase complexity and evade detection.

---

## Bypass AV Techniques
### 1. String Encoding ([string_encoding.ps1](https://github.com/AlyanGulzar/PowerShell-AV-Evasion/blob/main/BypassAV/String_Encoding.ps1))
Encodes script strings using Base64 or other encoding schemes.

### 2. Encoding Combination ([encoding_combination.ps1](https://github.com/AlyanGulzar/PowerShell-AV-Evasion/blob/main/BypassAV/Encoding_Combination.ps1))
Uses multiple encoding methods together to create a multi-layered obfuscation.

### 3. Script Encryption ([script_encryption.ps1](https://github.com/AlyanGulzar/PowerShell-AV-Evasion/blob/main/BypassAV/Script_Encryption.ps1))
Encrypts the entire script using AES or other encryption methods and decrypts at runtime.

---

## Examples
### 1. Reverse Shell ([reverse_shell.ps1](https://github.com/AlyanGulzar/PowerShell-AV-Evasion/blob/main/Examples/Reverse_Shell.ps1))
Creates a reverse shell that connects back to the attacker’s system, using obfuscated commands to avoid detection.

### 2. Download and Execute ([download_execute.ps1](https://github.com/AlyanGulzar/PowerShell-AV-Evasion/blob/main/Examples/Download_Execute.ps1))
Downloads a malicious script and executes it directly in memory, bypassing common AV solutions.

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/Antivirus-Evasion
   cd Antivirus-Evasion
   ```
2. Explore each technique and example inside the respective directories.
3. Execute the scripts with PowerShell:
   ```bash
   powershell.exe -ExecutionPolicy Bypass -File ObfuscationTechniques/simple_obfuscation.ps1
   ```

## Disclaimer
This project is intended for educational and research purposes only. Unauthorized use of these techniques on systems without permission is illegal and unethical.
