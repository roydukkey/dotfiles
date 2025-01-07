# Create symlinks to the scripts to place before system versions.
#
# eg. python
#      ln -s /opt/homebrew/bin/python3 ~/opt/scripts/python
#
#export PATH=/Users/roydukkey/opt/scripts:$PATH

# Report CPU Temperature @RPi
alias temp='/opt/vc/bin/vcgencmd measure_temp'

# Open Tower with access to paths for pre-commit scripts
alias Tower='open -a Tower'

# ffmpeg: Trim beginning
#./ffmpeg -i "./1.mp4" -vcodec copy -acodec copy -ss 16.5 "./new/1.mp4"

# ffmpeg: Trim [start] for [duration]
#   `-ss` specifies the start time, e.g. 00:01:23.000 or 83 (in seconds)
#   `-t` specifies the duration of the clip. The format of the time is the same
#   `-map 0` maps all streams, audio, video, and subtitles
#
#./ffmpeg -ss [start] -i "./1.mp4" -t [duration] -map 0 -c copy "./new/1.mp4"

# ffmpeg: Trim [start] to [end]
#./ffmpeg -copyts -ss [start] -i in.mp4 -to [end] -map 0 -c copy out.mp4

# ffmpeg: Increase the volume
# more: https://stackoverflow.com/questions/24911402/increasing-a-files-volume-using-vlc-cli
#./ffmpeg -i "./1.mp4" -vcodec copy -filter:a "volume=4" "./new/1.mp4"

# ffmpeg: Replace audio of a video with the audio from a different video
#./ffmpeg -an -i "./video.mp4" -vn -i "./audio.mp4" -map 0:v -map 1:a -vcodec copy "./new/merged.mp4"

# ffmpeg: recreate timestamps
#./ffmpeg -i ./in.mkv -fps_mode drop -map 0 -c copy out.mkv

# mkvmerge: concat
#/Applications/MKVToolNix-83.0.app/Contents/MacOS/mkvmerge -o join.mkv ./1.mkv + ./2.mkv

# extract: track
# /Applications/MKVToolNix-86.0.app/Contents/MacOS/mkvextract tracks ./1.mkv <track_numer>:<subtitle_file.srt>

# Batch File Loop
#for i in *.mp4; do ./ffmpeg -i "$i" -vcodec copy -filter:a "volume=4" "./new/${i%.*}.mp4"; done

#alias vtt='(){for i in *.vtt; do subsrt convert "$i" "./${i%.*}.srt"; done;}'

# CE Aliases
#alias envmake='virtualenv -p python3 .venv'
#alias envup='source .venv/bin/activate'
#alias wpm='wafexec npm'
