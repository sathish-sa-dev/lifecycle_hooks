#!/bin/bash

LIFECYCLE_HOOK="$1"

CONTENTS="$LIFECYCLE_HOOK-`date +%y-%m-%d_%T.%N`"
echo $CONTENTS
touch $CONTENTS

