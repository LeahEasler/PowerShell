do {
    $choice = Read-Host -Promt 'What is the best programming language'
} until ($choice -eq 'PowerShell')
Write-Host -Object 'Correct!'