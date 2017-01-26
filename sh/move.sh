#!/bin/sh
export FILENAME="PHP_in_Action.mobi"
echo "Moving $FILENAME to uploaded/$FILENAME..."
curl -X POST https://api.dropboxapi.com/2/files/move \
    --header "Authorization: Bearer $DROPBOX_KEY" \
    --header "Content-Type: application/json" \
    --data "{\"from_path\": \"/$FILENAME\",\"to_path\": \"/uploaded/$FILENAME\",\"allow_shared_folder\": false,\"autorename\": false}"
echo "Done."