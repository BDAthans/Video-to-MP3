@echo off
Title Video to MP3
setlocal EnableDelayedExpansion

echo ###################################################################################################
echo #                                                                                                 #
echo #                                       - - Video to MP3 - -                                      #
echo #                                                                                                 #
echo ###################################################################################################
echo.
set /p URL= Paste File path (drag file here now): 
echo.

if not exist converted-mp3s mkdir converted-mp3s
..\ffmpeg\bin\ffmpeg -i %URL% -q:a 0 -map a converted-mp3s\Output.mp3

echo.
echo Press Any Key to Exit
pause >NUL
explorer %cd%\converted-mp3s
