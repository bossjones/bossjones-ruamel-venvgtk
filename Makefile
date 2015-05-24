
UTILNAME:=venvgtk
PKGNAME:=ruamel.venvgtk
VERSION:=$$(python setup.py --version)
REGEN:=/home/bin/ruamel_util_new util -c --publish VenvGtk --skip-hg

include ~/.config/ruamel_util_new/Makefile.inc

clean:
	rm -rf build .tox $(PKGNAME).egg-info/ README.pdf
	find . -name "*.pyc" -exec rm {} +
	@find . -name "__pycache__" -print0  | xargs -r -0 rm -rf
