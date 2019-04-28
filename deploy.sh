#!/usr/bin/env sh

git add -A
git commit -m 'Update storybook.'
git push -u origin master

set -e
npm run sb:build
cd storybook-static
git init
git add -A
git commit -m 'Deploy storybook static files.'
git push -f git@github.com:rulai-ymwang/my-storybook.git master:gh-pages
cd -
