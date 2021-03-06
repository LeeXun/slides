PORT=3999
SLIDE_HOST=127.0.0.1

all: help

## 2019-04-23 Golang meetup #40
20190423_golang40:
	mypresent \
		-http 0.0.0.0:$(PORT) \
		-orighost $(SLIDE_HOST) \
		-content src/20190423_golang40/ \
		-base themes/default

## 2019-04-23 Golang meetup #40
20190720_kaohsiung_kkbox:
	mypresent \
		-http 0.0.0.0:$(PORT) \
		-orighost $(SLIDE_HOST) \
		-content src/20190720_kaohsiung_kkbox/ \
		-base themes/bright

#########
# Help ##
#########
# COLORS
GREEN  := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
WHITE  := $(shell tput -Txterm setaf 7)
RESET  := $(shell tput -Txterm sgr0)

TARGET_MAX_CHAR_NUM=20
## Show help
help:
	@echo ''
	@echo 'Usage:'
	@echo '  ${YELLOW}make${RESET} ${GREEN}<target>${RESET}'
	@echo ''
	@echo 'Targets:'
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "  ${YELLOW}%-$(TARGET_MAX_CHAR_NUM)s${RESET} ${GREEN}%s${RESET}\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)