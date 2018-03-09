export DISPLAY=localhost:$(awk < /etc/ssh/sshd_config '{if ($1=="X11DisplayOffset") print $2}').0
