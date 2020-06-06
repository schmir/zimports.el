export EMACS ?= emacs
CASK = cask

default: install lint test

install: .install-$(EMACS)

.install-$(EMACS):
	$(CASK) install
	$(CASK) update
	touch $@

lint: install
	cask exec emacs -Q --batch -l elisp-lint.el -f elisp-lint-files-batch  zimports.el

test: install
	$(CASK) exec buttercup -L .

build-docker-image:
	docker build . -t schmir/emacs-zimports-test

upload-docker-image:
	docker push schmir/emacs-zimports-test:latest

.PHONY: default install lint build-docker-image upload-docker-image
