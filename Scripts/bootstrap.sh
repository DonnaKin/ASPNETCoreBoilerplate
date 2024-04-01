#!/bin/bash

# 프로젝트의 루트 디렉토리로 이동
cd ..

# 사용자로부터 새 프로젝트 이름 입력받기
read -p "Enter the new project name: " new_name

# 기존 프로젝트 이름
old_name="CoreBoilerplate"

# 솔루션(.sln) 파일 이름 변경
mv "${old_name}.sln" "${new_name}.sln"

# 프로젝트(.csproj) 파일 이름 변경
mv "${old_name}.csproj" "${new_name}.csproj"

# 파일 내의 'CoreBoilerplate'를 새 프로젝트 이름으로 변경
# macos에서는 sed 명령어 뒤에 ""를 붙여야 함
# https://stackoverflow.com/questions/19456518/sed-command-with-i-option-failing-on-mac-but-works-on-linux
# 다른 운영체제에서 문제가 발생한다면 ""를 제거하고 실행
sed -i "" "s/${old_name}/${new_name}/g" README.md
sed -i "" "s/${old_name}/${new_name}/g" Pages/_ViewImports.cshtml
sed -i "" "s/${old_name}/${new_name}/g" Pages/Error.cshtml.cs
sed -i "" "s/${old_name}/${new_name}/g" Pages/Index.cshtml.cs
sed -i "" "s/${old_name}/${new_name}/g" Pages/Privacy.cshtml.cs
sed -i "" "s/${old_name}/${new_name}/g" Pages/Shared/_Layout.cshtml

echo "Project files and README have been updated."