@echo off
mkdir ALAC
for %%f in (*.flac) do (
  ffmpeg -i "%%f" -acodec alac -vcodec copy "ALAC\%%~nf.m4a"
)