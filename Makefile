.DEFAULT_GOAL := help

build-example: ## Build example
	@mkdir -p bin
	go build -o bin/example -ldflags "-X main.version=v1.2.3" go/example/main.go

clean: ## Remove binary
	@rm bin/*

help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
