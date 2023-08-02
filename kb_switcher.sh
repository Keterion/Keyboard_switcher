layouts=("us dvorak" "us" "semimak")
len=${#layouts[@]}
current=0
switch() {
	setxkbmap ${layouts[$current]}
	notify-send -t 1000 -e "Keyboard" "Set layout to ${layouts[$current]}"
	current=$(((current + 1) % len))
}
create_pid() {
	echo "$$" > /tmp/curr_kb.txt
}
delete_tmp() {
	rm /tmp/curr_kb.txt
	exit
}

trap switch SIGUSR1
trap delete_tmp SIGABRT SIGHUP SIGTERM SIGINT

create_pid
while true; do
	:
done
