@echo off
cd /d "C:\Users\sadai\Documents\AI\01_Claudecode\01_FirstProj"

git add -A

for /f "tokens=*" %%i in ('git status --porcelain') do (
    git commit -m "Auto commiit: %DATE% %TIME%"
    git push origin main
    goto :done
)

:done
