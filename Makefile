all: install-script.sh

install-script.sh: install_base.sh docker-proxy config
	echo "#!/bin/bash" > install-script.sh
	echo >> install-script.sh
	echo 'PAYLOAD=$$(cat <<EOF' >> install-script.sh
	tar cz docker-proxy config | uuencode -m - >> install-script.sh
	echo "EOF" >> install-script.sh
	echo ")" >> install-script.sh
	echo >> install-script.sh
	cat install_base.sh >> install-script.sh
	chmod +x install-script.sh

clean: install-script.sh
	rm -f install-script.sh

install: install-script.sh
	./install-script.sh
