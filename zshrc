# add these line after default .zshrc file to have useful functions.
# my additions
myip() {
        printf "%s" `ip -4 addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'` | xclip -selection clipboard;
        ip -4 addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}';
}

rscan() {
        printf "rustscan --accessible -u 5000 -b 2500 -a $1 -- -Pn -A\n\n";
		rustscan --accessible -u 5000 -b 2500 -a $1 -- -Pn -A;
		notify-send 'rustscan scan completed';
}

server() {
        sudo printf "\nsudo python3 -m http.server $1\n"; python3 -m http.server $1;
}

pftp(){
	printf "\npython3 -m pyftpdlib -p $1 -w --user=kali --password=kali\n";
	python3 -m pyftpdlib -p $1 -w --user=kali --password=kali
}

# enumerate ftp with weak credentials
# usage : eftp IP
eftp(){
    printf "\nmap -Pn -p 21 --script=ftp* $1\n";
    nmap -Pn -p 21 --script=ftp* $1;
}

# Created by `pipx` on 2022-03-23 12:40:04
export PATH="$PATH:/home/kali/.local/bin"
