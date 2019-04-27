#!/bin/sh

GO_FILE="$1.linux-amd64.tar.gz"

remove_golang() {
	echo "Removing old golang installation"
	rm -rf /usr/local/go	
}

download_new_golang() {
	echo "Installing $GO_VERSION"
	wget "https://golang.org/dl/$GO_FILE" -O $HOME/Downloads/$GO_FILE
}

install_golang() {
	echo "Unzipping $GO_FILE"
	tar -xvf $HOME/Downloads/$GO_FILE
	echo "Moving $GO_FILE to bin"
	mv $HOME/Downloads/$GO_FILE /usr/bin
}

main() {
	remove_golang
	download_new_golang
	install_golang
}

main
