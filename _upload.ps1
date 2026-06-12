# 通过 GitHub API 批量上传文件（绕过 git SSL 问题）
$owner = "greatweir-star"
$repo = "nuwa-skill"
$branch = "main"
$message = "feat: 女娲 Skill v1.0.0 完整初始化"

$files = Get-ChildItem -Recurse -File | Where-Object { 
    $_.FullName -notlike '*.git*' -and 
    $_.Name -ne '_upload.ps1'
}

$basePath = (Get-Location).Path + '\'

foreach ($f in $files) {
    $relativePath = $f.FullName.Replace($basePath, '').Replace('\', '/')
    $bytes = [System.IO.File]::ReadAllBytes($f.FullName)
    $content = [Convert]::ToBase64String($bytes)
    
    $body = @{
        message = "$message - $relativePath"
        content = $content
        branch = $branch
    } | ConvertTo-Json -Compress
    
    $tempFile = [System.IO.Path]::GetTempFileName()
    [System.IO.File]::WriteAllText($tempFile, $body, [System.Text.Encoding]::UTF8)
    
    Write-Host "Uploading $relativePath ..."
    gh api "repos/$owner/$repo/contents/$relativePath" -X PUT --input "$tempFile" 2>&1 | Out-Null
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "  OK"
    } else {
        Write-Host "  FAILED (may already exist)"
    }
    
    Remove-Item $tempFile -ErrorAction SilentlyContinue
}

Write-Host "Done."
