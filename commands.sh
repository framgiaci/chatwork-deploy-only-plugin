#!/bin/bash
curl -X POST -H "X-ChatWorkToken: $PLUGIN_TOKEN" -d \
"body=[info][title]$PLUGIN_STATUS build $PLUGIN_BUILD_ID[/title]
Repo: $PLUGIN_REPO
Author: $PLUGIN_AUTHOR
Branch: $PLUGIN_BRANCH
Commit ID: $PLUGIN_COMMIT_ID
Started at: $PLUGIN_CREATE_AT
Build link: $PLUGIN_BUILD_LINK
Commit messages: $PLUGIN_COMMIT_MESSAGE
[/info]" \
"https://api.chatwork.com/v2/rooms/$PLUGIN_ROOM_ID/messages"