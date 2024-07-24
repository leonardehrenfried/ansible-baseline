bump-version:
	./bump-version.sh
	git commit -am "Bump version"
	git push

publish: bump-version
	rm -rf *.tar.gz
	ansible-galaxy collection build -vvvv
	ansible-galaxy collection publish leonardehrenfried-baseline-*tar.gz -v
