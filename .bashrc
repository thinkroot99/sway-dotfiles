#
# ~/.bashrc
#

if [ "$(tty)" = "/dev/tty1" ]; then
        exec dbus-run-session sway
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

#Bash aliases
alias mkfile='touch'
alias thor='sudo pcmanfm'
alias jctl='journalctl -p 3 -xb'
alias ssaver='xscreensaver-demo'
alias reload='cd ~ && source ~/.bashrc'
alias pingme='ping -c64 github.com'
alias cls='clear && neofetch | lolcat'
alias traceme='traceroute github.com'

#youtube-dl
alias ytv-best='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio" --merge-output-format mp4 '
alias yt='ytfzf -tf'
alias audio='youtube-dl -f 140'
alias mp3="yt-dlp -x --audio-format mp3 --audio-quality 0"
alias wdl='/home/crismblog/Gits/waldl/waldl'

#shutdown or reboot
alias suspend='systemctl suspend'
alias off='sudo shutdown -h now'
alias reboot="sudo reboot"
alias exit='i3-msg exit'

#Pacman for software managment
alias search='sudo pacman -Qs'
alias install='sudo pacman -S'
alias linstall='sudo pacman -U'
alias remove='sudo pacman -R'
#alias update='sudo pacman -Syyu'
alias update='sudo pacman -Sy && sudo powerpill -Su && paru -Su'
alias up='paru && sudo pacman -Sy'
alias clean='sudo pacman -Rns $(pacman -Qtdq)'
alias clr='sudo pacman -Scc'

#paru as aur helper - updates everything
alias pget='paru -S '
alias prm='paru -Rs '
alias psr='paru -Ss '
alias upall='paru -Syyu --noconfirm'

##Cmatrix thing
alias matrix='cmatrix -s -C cyan'

#systeminfo
alias probe="sudo -E hw-probe -all -upload"

#available free memory
alias free="free -mt"

#hardware info --short
alias hw="hwinfo --short"

#GiT  command
alias gc='git clone '

#Copy/Remove files/dirs
alias rmd='rm -r'
alias srm='sudo rm'
alias srmd='sudo rm -r'
alias cpd='cp -R'
alias scp='sudo cp'
alias scpd='sudo cp -R'

#cd/ aliases
alias home='cd ~'
alias etc='cd /etc/'
alias music='cd ~/Music'
alias vids='cd ~/Videos'
alias conf='cd ~/.config'
alias desk='cd ~/Desktop'
alias pics='cd ~/Pictures'
alias dldz='cd ~/Downloads'
alias docs='cd ~/Documents'
alias dgit='cd ~/Gits'
alias sapps='cd /usr/share/applications'

#Raspberry Pi
alias rpi="ssh crismblog@192.168.1.144"

#Neofetch
#alias neofetch='neofetch --ascii --source ~/ascii-art/neofetch/thinkpad-v.txt --ascii_colors '15' '1' --colors '1' '1' '1' '1' '1' '15''
alias thinkfetch='neofetch --ascii --source ~/.ascii-art/neofetch/thinkpad-v.txt --ascii_colors '15' '1' --colors '1' '1' '1' '1' '1' '15''

#neofetch
thinkfetch

PS1='[\u@\h \W]\$ '
