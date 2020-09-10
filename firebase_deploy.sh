#!/bin/bash

env=$1
inoutjs="conf/setting.js"
PUBLIC_DIR=src          #Firebase Default: public
outfile="${PUBLIC_DIR}/conf/config.js"

# check argument
if   [ -z $env ]; then 
  echo -e "No argumant ...\nStoped\n"; exit
elif [ $env == "prod" -o $env == "dev" ]; then
  :
else
  echo -e "No such environment\nStopped\n"; exit
fi

# directory check
if [ ! -d $(dirname $outfile) ]; then
  mkdir -p $(dirname $outfile)
fi

# create config.js
cat << EOF > $outfile
const = $(NODE_FB_ENV=${env} node ${inoutjs});

EOF

if [ -e "${outfile}" ]; then 
  firebase deploy --project ${env} \
                  --only hosting
fi

exit


