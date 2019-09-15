# @Author: juan
# @Date:   2019-01-29T12:06:08+09:00
# @Last modified by:   juan
# @Last modified time: 2019-01-29T12:06:37+09:00

.PHONY: create remove list copy backup

## COMMANDS ##

## Default
default:
	@echo "Options:"
	@echo "    make create      # Create a new project."
	@echo "    make remove      # Remove a project."
	@echo "    make list        # List the created projects."
	@echo "    make copy        # Copy project and data structure."
	@echo "    make backup      # Build a zipped backup of the project."
	@echo ""
	
## create a new project
create:
	${BASH} .scripts/create.sh

## remove a project
remove:
	${BASH} .scripts/remove.sh
	
## list created projects
list:
	ls  ${PWD}/projects/

## copy project and data
copy:
	${BASH} .scripts/copy.sh

## project backup
backup:
	${BASH} .scripts/backup.sh
