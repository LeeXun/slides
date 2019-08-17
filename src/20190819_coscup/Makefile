PORT=3999
SLIDE_HOST=127.0.0.1
SLIDE_DIR=.
THEME_DIR=./../../themes/default

all: mypresent

mypresent:
	mypresent \
		-http 0.0.0.0:$(PORT) \
		-orighost $(SLIDE_HOST) \
		-content $(SLIDE_DIR)/ \
		-base $(THEME_DIR)/

mypresent2:
	mypresent \
		-http 0.0.0.0:$(PORT) \
		-orighost $(SLIDE_HOST) \
		-content $(SLIDE_DIR)/ \
		-base ./../../themes/bright/

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