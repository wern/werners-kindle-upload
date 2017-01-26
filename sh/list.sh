#!/bin/sh
curl -X POST https://api.dropboxapi.com/2/files/list_folder \
    --header "Authorization: Bearer $DROPBOX_KEY" \
    --header "Content-Type: application/json" \
    --data "{\"path\": \"\",\"recursive\": false,\"include_media_info\": false,\"include_deleted\": false,\"include_has_explicit_shared_members\": false}"
