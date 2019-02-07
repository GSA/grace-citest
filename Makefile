
parts = $(subst -, ,$(CIRCLE_USERNAME))
environment := $(shell echo "$(word 2,$(parts))" | tr '[:lower:]', '[:upper:]')
environments := production development
ifneq ($(filter $(environment),$(environments)),)
    export appenv := $(environment)
endif

.PHONY: test test_ci
test: test_ci
test_ci:
	@echo "CIRCLE_USERNAME: $(CIRCLE_USERNAME)"
	@echo "appenv: $(appenv)"