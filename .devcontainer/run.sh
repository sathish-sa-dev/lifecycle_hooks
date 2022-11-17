#!/bin/bash

LIFECYCLE_HOOK="$1"

CONTENTS="`date +%y-%m-%d_%T.%N`-$LIFECYCLE_HOOK"
echo $CONTENTS
touch $CONTENTS

