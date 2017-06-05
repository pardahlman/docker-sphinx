#!/bin/bash
if [ ! -f ./conf.py ]; then
    echo "== Sphinx docs is not initialized =="
    echo " - Map a volume to /docs to work on existing documentaiton"
    echo " - Run sphinx-quickstart to create a new set of documentation"
    tail -F /dev/null
fi

sphinx-autobuild . _build_html -H 0.0.0.0 --poll
