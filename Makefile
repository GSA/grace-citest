.PHONY: test test_ci
test: test_ci
test_ci:
	@echo "CI_USER: $(CI_USER)"
	@echo "appenv: $(appenv)"