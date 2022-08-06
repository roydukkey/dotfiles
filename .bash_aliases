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

# ffmpeg: Increase the volume
#./ffmpeg -i "./1.mp4" -vcodec copy -filter:a "volume=4" "./new/1.mp4"

# ffmpeg: Replace audio of a video with the audio from a different video
#./ffmpeg -an -i "./audio.mp4" -vn -i "./video.mp4" -map 0:v -map 1:a -vcodec copy "./new/merged.mp4"

# Batch File Loop
#for i in *.mp4; do ./ffmpeg -i "$i" -vcodec copy -filter:a "volume=4" "./new/${i%.*}.mp4"; done

# CE Aliases
#alias envmake='virtualenv -p python3 .venv'
#alias envup='source .venv/bin/activate'
#alias wpm='wafexec npm'
