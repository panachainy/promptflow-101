SHELL := /bin/zsh

p: prepair
prepair:
	npm i -g nodemon

sh:
	poetry shell

# r: run
# download: run
# run:
# 	python src/main.py download

d: dev
dev:
	# nodemon --exec python src/main.py mergePDFs
	nodemon --exec python src/main.py makePDFs

# clean pdfs
clean:
	for dir in ./pdfs/*(/) ./pdfs/*/*(/) ./pdfs/*/*/*(/); do \
		if [[ -z $$(ls -A $$dir) ]]; then \
			rmdir $$dir; \
		fi; \
	done
