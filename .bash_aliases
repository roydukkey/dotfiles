# Report CPU Temperature
alias temp='/opt/vc/bin/vcgencmd measure_temp'

# Open Tower with access to paths for pre-commit scripts
alias Tower='open -a Tower'

# ffmpeg: Trim beginning
# ./ffmpeg -i "./1.mp4" -vcodec copy -acodec copy -ss 16.5 "./new/1.mp4"

# ffmpeg: Increase the volume
# ./ffmpeg -i "./1.mp4" -vcodec copy -filter:a "volume=4" "./new/1.mp4"

# Batch File Loop
# for i in *.mp4; do ./ffmpeg -i "$i" -vcodec copy -filter:a "volume=4" "./new/${i%.*}.mp4"; done
