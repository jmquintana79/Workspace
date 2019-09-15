# @Author: juan
# @Date:   2019-01-29T12:06:08+09:00
# @Last modified by:   juan
# @Last modified time: 2019-01-29T12:06:37+09:00

.PHONY: create remove

## COMMANDS ##

## Default
default:
	@echo "Options:"
	@echo "    make create      # Create a new project."
	@echo "    make remove      # Remove a project."
	@echo "    make list        # List the created projects."      
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
