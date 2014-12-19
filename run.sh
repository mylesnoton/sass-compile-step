#!/usr/bin/env bash

export TASK_NAME="sass-compile"

# check for the two required params
if [ -z "$WERCKER_SASS_COMPILE_SOURCE_DIR" ]
then
    fail 'Missing source-dir option, please add it to the $TASK_NAME step in your wercker.yml'
fi

if [ -z "$WERCKER_SASS_COMPILE_OUTPUT_DIR" ]
then
    fail 'Missing output-dir option, please add it to the $TASK_NAME step in your wercker.yml'
fi


# check to see if gem install works first
if type gem install > /dev/null 2>&1; then
    sudo gem install sass
else
    fail 'gem install sass command failed, gem install is not a recognised command'
fi


# check to make sure sass is installed and then run the compile
if type sass > /dev/null 2>&1; then
    sass --update --no-cache --force --sourcemap=$WERCKER_SASS_COMPILE_SOURCEMAP --style $WERCKER_SASS_COMPILE_OUTPUT_STYLE $WERCKER_SASS_COMPILE_SOURCE_DIR:$WERCKER_SASS_COMPILE_OUTPUT_DIR
else
    fail 'sass command failed, sass is not a recognised command'
fi