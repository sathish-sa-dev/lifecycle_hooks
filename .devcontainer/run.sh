#!/bin/bash

LIFECYCLE_HOOK="$1"

# Only works on lifecycle hooks run in the container ('initializeCommand' won't be able to find this.)
ACTION_NAME="$(cat /workspaces/.codespaces/shared/environment-variables.json | jq -r .ACTION_NAME)"

MARKER_FILE="`date +%y-%m-%d_%T.%N`-$LIFECYCLE_HOOK-$ACTION_NAME.marker"
echo $MARKER_FILE
touch $MARKER_FILE

# Eg: https://github.com/joshspicer/lifecycle_hooks/settings/secrets/codespaces
echo "MY_REPO_SCOPED_SECRET=$MY_REPO_SCOPED_SECRET" >> $MARKER_FILE

# Eg: https://github.com/settings/codespaces
echo "MY_USER_SCOPED_SECRET=$MY_USER_SCOPED_SECRET" >> $MARKER_FILE

# Eg: https://github.com/organizations/codspace/settings/secrets/codespaces
echo "MY_ORG_SCOPED_SECRET=$MY_ORG_SCOPED_SECRET" >> $MARKER_FILE
