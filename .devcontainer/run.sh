#!/bin/bash

LIFECYCLE_HOOK="$1"
ACTION_NAME="$(cat /workspaces/.codespaces/shared/environment-variables.json | jq -r .ACTION_NAME)"

CONTENTS="`date +%y-%m-%d_%T.%N`-$LIFECYCLE_HOOK-$ACTION_NAME.marker"
echo $CONTENTS
touch $CONTENTS

