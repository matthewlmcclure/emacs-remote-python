#! /bin/bash

# Run this in the remote Python's virtualenv to copy Python modules
# distributed with Emacs to your Python virtualenv.

cp "$(emacs --batch -q --no-site-file --eval '(message data-directory)' 2>&1)"/*.py \
    "$(python -c 'from distutils.sysconfig import get_python_lib; print get_python_lib()')"
