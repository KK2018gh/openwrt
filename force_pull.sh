#! /bin/sh
git fetch --all
git reset --hard origin/dev-master
cd feeds/packages && git fetch --all && git reset --hard origin/dev-master && cd ../../
cd feeds/luci && git fetch --all && git reset --hard origin/dev-19.07 && cd ../../
./scripts/feeds update -a && ./scripts/feeds install -a
