publish: bump-version
	rm -rf *.tar.gz
	ansible-galaxy collection build
	ansible-galaxy collection publish leonardehrenfried-baseline-*tar.gz

bump-version:
	./bump-version.sh
