bump-version:
	./bump-version.sh

publish: bump-version
	rm -rf *.tar.gz
	ansible-galaxy collection build -vvvv
	ansible-galaxy collection publish leonardehrenfried-baseline-*tar.gz -v
