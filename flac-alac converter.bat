@echo off
mkdir ALAC
for %%f in (*.flac) do (
  ffmpeg -i "%%f" -acodec alac -vcodec copy "%%~nf.m4a"
  move "%%~nf.m4a" "ALAC\%%~nf.m4a"
)