all:
	npm run build
	git add .
	git commit -am "astro"
	git push
