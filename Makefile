all:
	@cp lib/marked.js marked.js
	@uglifyjs -o marked.min.js marked.js
	@cp marked.min.js ../pencil/client/js/lib

clean:
	@rm marked.js
	@rm marked.min.js

bench:
	@node test --bench

.PHONY: clean all
