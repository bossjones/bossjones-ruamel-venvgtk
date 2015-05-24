

ruamel.venvgtk
--------------

This package is intended to be included in e.g. a tox.ini file
for testing of packages that rely on gtk2.0. under Linux.

gtk is normally already installed on the target machine but not
available in any virtualenv. Installing with ``pip`` as dependency is
not possible.

This package, during setup, will setup links to the relevant directories
(see ``main()`` in ``setup.py``).

Typical use is to include the following dependency in your ``tox.ini`` file::

  deps:
      pytest
      ruamel.venvgtk

or you can install the links to gtk in your virtualenv by activating your
environment and doing::

  pip install ruamel.venvgtk


**You don't need to import from this package. Everything interesting
happens during installation!**