rename 's/^Picture\ //' *

ls -1 | perl -ne 'chomp; ($a) = $_ =~ /^(\d+)/; $n = sprintf("%02d", ($a - 8)); system("mv $_ $n.jpg")'

ffmpeg -r 6 -i %02d.jpg -vcodec libx264 video.mp4
