# 사용자로부터 새 프로젝트 이름 입력받기
$newName = Read-Host -Prompt "Enter the new project name"

# 기존 프로젝트 이름
$oldName = "CoreBoilerplate"

# 솔루션(.sln) 및 프로젝트(.csproj) 파일 이름 변경
Rename-Item -Path "$oldName.sln" -NewName "$newName.sln"
Rename-Item -Path "$oldName.csproj" -NewName "$newName.csproj"

# 파일 내의 'CoreBoilerplate'를 새 프로젝트 이름으로 변경
$filesToUpdate = @("README.md", "Pages/_ViewImports.cshtml", "Pages/Error.cshtml.cs", "Pages/Index.cshtml.cs", "Pages/Privacy.cshtml.cs", "Pages/Shared/_Layout.cshtml")

foreach ($file in $filesToUpdate) {
    (Get-Content -Path $file) -replace $oldName, $newName | Set-Content -Path $file
}

Write-Host "Project files have been updated."