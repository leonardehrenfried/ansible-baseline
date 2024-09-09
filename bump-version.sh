#! /bin/bash


CURRENT_VERSION=`yq -r .version galaxy.yml`
IFS=. read -r v1 v2 v3 <<< "${CURRENT_VERSION}"    # split into (integer) components
((v3++))                                         # do the math
NEW_VERSION="${v1}.${v2}.${v3}"

echo $NEW_VERSION

sed -i "s/^version:.*$/version: ${NEW_VERSION}/" galaxy.yml

git commit -am "Release version ${NEW_VERSION}"
git tag "${NEW_VERSION}"
git push --follow-tags
