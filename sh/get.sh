#!/bin/sh
export FILENAME="PHP_in_Action.mobi"
echo "Fetching $FILENAME..."
curl -X POST https://content.dropboxapi.com/2/files/download \
    --header "Authorization: Bearer $DROPBOX_KEY" \
    --header "Dropbox-API-Arg: {\"path\": \"/$FILENAME\"}" > ./$FILENAME
echo "Done."