all: save build deploy 

build:
	@npm run build

save: site config
	@git add .
	@git commit -am "astro"

deploy:
	@git push

site: public/ src/

config: Makefile .gitignore astro.config.mjs package.json README.md tsconfig.json docs/

.SILENT:
