.PHONY: docs
docs:
	redoc-cli bundle -o ./docs/index.html yaml/flight.yml

.PHONY: docs-serve
docs-serve:
	redoc-cli serve -w -ssr -p 7777 yaml/flight.yml