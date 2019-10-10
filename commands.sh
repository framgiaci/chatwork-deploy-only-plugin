#!/bin/bash
if [ ! -v ${PLUGIN_DEPLOY} ]; then
    curl -X POST -H "X-ChatWorkToken: $CHATWORK_TOKEN" -d \
        "body=[info][title]$PLUGIN_BUILD_STATUS build $PLUGIN_BUILD_NUMBER[/title]
        Repo: $PLUGIN_REPO_NAME
        Author: $PLUGIN_COMMIT_AUTHOR
        Branch: $PLUGIN_REPO_BRANCH
        Auto deploy status: $PLUGIN_DEPLOY
        Repo link: $PLUGIN_REPO_LINK
        Commit messages: $PLUGIN_COMMIT_MESSAGE
        [/info]" \
        "https://api.chatwork.com/v2/rooms/$ROOM_ID/messages" 
fi
echo "=======token=("
echo $CHATWORK_TOKEN
echo ")"
echo "---room id=("
echo $ROOM_ID 
echo ")"

exit 0
