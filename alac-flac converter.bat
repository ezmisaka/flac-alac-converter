@echo off
mkdir FLAC
for %%f in (*.m4a) do (
  ffmpeg -i "%%f" -acodec flac -vcodec copy "FLAC\%%~nf.flac"
)