# drone-chatwork

[![Go Doc](http://ci.framgia.vn/api/badges/framgia/ci-v3/status.svg)](http://dangminhtruong.space)

Drone plugin to send build status notifications via Chatwork. For the usage with drone  please take a look at [the docs](http://readme.drone.io/).

## Docker

Build the docker image with the following commands:

```
docker build -t dangminhtruong/drone-chatwork:latest .
```

This will create a Docker image called `dangminhtruong/drone-chatwork:latest`.

### Example
Execute from the working directory:

```sh
docker run --rm -e PLUGIN_TOKEN=you_chatwork_token \
-e PLUGIN_ROOM_ID=your_chatwork_room_id \
-e PLUGIN_MESSAGE='Hello World!' \
-e PLUGIN_STATUS=SUCCESS \
-e PLUGIN_BUILD_ID=15 \
-e PLUGIN_REPO=dangminhtruong/havana \
-e PLUGIN_AUTHOR=dangminhtruong \
-e PLUGIN_BRANCH=master \
-e PLUGIN_COMMIT_ID=e786dr2 \
-e PLUGIN_CREATE_AT=2018:16:04 \
-e PLUGIN_COMMIT_MESSAGE='Add Dockerfile...' \
-e PLUGIN_BUILD_LINK='https://github.com/dangminhtruong' \
dangminhtruong/drone-chatwork
```

Then you get chatwork message like following:

![][logo]

[logo]: rea.png