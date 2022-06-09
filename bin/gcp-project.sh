#!/usr/bin/env bash

set -e

FILE="$HOME/.gcp-project-list"
reload=`gcloud projects list --format="value(PROJECT_ID)" > $FILE`
if [ -f $FILE ]
then
    if test `find $FILE -mmin +60`
    then
        echo "source to old .... updating $FILE"
        $reload
    fi
else
    echo "$FIle does not exits - creating...."
    $reload
fi
gcloud config set project $(cat $FILE | fzf)
