#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run clean-build-public
npm run build-public

# navigate into the build output directory
cd build/public

# if you are deploying to a custom domain
#echo 'zacilenonazdravi.cz' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/jpergler/zacilenonazdravi.git master:publish/pages

cd -