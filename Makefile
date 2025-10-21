all: local

local: save build

publish: deploy

save: site config
	@git add .
	@git commit -am "astro"

build:
	@npm run build

deploy:
	@git push

site: public/ src/

config: Makefile .gitignore astro.config.mjs package.json README.md tsconfig.json docs/

.SILENT:
