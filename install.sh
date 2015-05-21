#!/bin/bash
# Not the nicest install script in the world 
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
# TODO: test contents of these files before deleting
# Maybe check if all lines start with # ?
rm -f $VIRTUALENVWRAPPER_HOOK_DIR/preactivate 
rm -f $VIRTUALENVWRAPPER_HOOK_DIR/predeactivate 
ln -s $DIR/preactivate $VIRTUALENVWRAPPER_HOOK_DIR/preactivate
ln -s $DIR/predeactivate $VIRTUALENVWRAPPER_HOOK_DIR/predeactivate
