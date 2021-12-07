publish:
	rm -rf *.tar.gz
	ansible-galaxy collection build
	ansible-galaxy collection publish leonardehrenfried-baseline-0.0.1.tar.gz
