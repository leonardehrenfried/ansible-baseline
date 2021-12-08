publish:
	rm -rf *.tar.gz
	ansible-galaxy collection build -vvvv
	ansible-galaxy collection publish leonardehrenfried-baseline-0.0.1.tar.gz -vvvv
