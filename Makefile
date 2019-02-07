.PHONY: test test_ci
test: test_ci
test_ci:
	@echo "CIRCLE_USERNAME: $(CIRCLE_USERNAME)"
	@echo "appenv: $(appenv)"