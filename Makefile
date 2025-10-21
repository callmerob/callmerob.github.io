all: site config

site: public/ src/
	@npm run build

config: Makefile .gitignore astro.config.mjs package.json README.md tsconfig.json docs/
	@git add .
	@git commit -am "astro"
	@git push

.SILENT:
