@echo off
chcp 65001 >nul
echo ========================================
echo   兰迪数码 - 一键发布网站
echo ========================================
echo.

:: 进入网站文件夹
cd /d C:\Users\windows\Desktop\landishuma

:: 复制最新网站文件
echo [1/3] 复制网站文件...
copy /Y "C:\Users\windows\.qclaw\workspace-agent-b964e680\used-tech-mall.html" "index.html" >nul

:: 添加所有更改
echo [2/3] 提交更改...
"C:\Program Files\Git\cmd\git.exe" add -A
"C:\Program Files\Git\cmd\git.exe" commit -m "更新网站 - %date% %time%"

:: 推送到 GitHub
echo [3/3] 推送到 GitHub...
"C:\Program Files\Git\cmd\git.exe" push origin main

echo.
echo ========================================
echo   发布完成！
echo   等待 1-5 分钟后访问 www.lanyingdi.com
echo ========================================
pause
