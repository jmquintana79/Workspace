# @Author: juan
# @Date:   2018-08-01T09:27:57+09:00
# @Last modified by:   juan
# @Last modified time: 2019-01-08T11:21:18+09:00

.PHONY: clean create_environment

#################################################################################
# GLOBALS                                                                       #
#################################################################################

ifeq (,$(shell which conda))
HAS_CONDA=False
else
HAS_CONDA=True
endif


#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Delete all compiled Python files
clean:
	find . -name "*.pyc" -exec rm {} \;
	find . -name "__pycache__" -exec rmdir {} \;

## Set up python interpreter environment
create_environment:
ifeq (True,$(HAS_CONDA))
	@echo ">>> Detected conda, creating conda environment."
	conda env create -f environment.yml
else
	@echo ">>> Conda is not available."
endif
