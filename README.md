Solution to the issue of not being able to upload FLAC files to the Apple Music library.

**FLAC Cover Setter**:
   - Place the script file, all `.flac` files, and the `cover.jpeg` image in the **same directory** before running the script. 
   - Rename your cover image or modify the filename in the script before running the batch script.
   - If you want to set cover to mp3 files, edit the script:
```bat
ffmpeg -i input.mp3 -i cover.jpg -map 0:a -map 1:v -map_metadata 0 -id3v2_version 3 -c:a copy -c:v copy output.mp3
```

**Overwrite Warning**:
   - If a file with the same name already exists in the `output` folder, it **will be overwritten** without warning. To avoid overwriting, make sure the `output` folder is empty or modify the script to append unique identifiers to filenames.

**Required Software**:
   - Ensure that **FFmpeg** is installed and added to the system's `PATH`. You can test this by running `ffmpeg` in a Command Prompt window. If FFmpeg is not recognized, install it and configure the `PATH`.
   - [Installation Guide](https://blog.csdn.net/csdn_yudong/article/details/129182648)
