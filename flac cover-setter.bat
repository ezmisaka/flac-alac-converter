@echo off
set cover=cover.jpeg
set output_dir=output

:: 检查封面图片是否存在
if not exist "%cover%" (
    echo 封面图片 %cover% 不存在！
    pause
    exit /b
)

:: 创建输出文件夹（如果不存在）
if not exist "%output_dir%" (
    mkdir "%output_dir%"
)

:: 遍历当前目录的所有 .flac 文件
for %%f in (*.flac) do (
    echo 正在处理文件 %%f ...
    ffmpeg -i "%%f" -i "%cover%" -map 0:a -map 1:v -c:v copy -disposition:v attached_pic -codec:a copy "%output_dir%\%%~nf.flac"
)

echo 全部文件处理完成，文件已保存到 %output_dir% 文件夹！
pause
