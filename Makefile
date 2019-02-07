.PHONY: test test_ci
test: test_ci
test_ci:
	@echo "CIRCLE_USER: $(CIRCLE_USER)"
	@echo "appenv: $(appenv)"