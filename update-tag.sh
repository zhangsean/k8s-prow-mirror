#!/bin/bash
OLD_TAG=$(grep k8s-prow deck.Dockerfile | awk -F: '{print $2}')
echo "Current tag:" $OLD_TAG
echo "Checking latest Prow tag..."
NEW_TAG=$(curl -sSL https://github.com/kubernetes/test-infra/blob/master/prow/cluster/starter.yaml?raw= | grep image:\ gcr | awk -F: '{print $3}' | head -n 1)
echo "New Prow tag:" $NEW_TAG
if [ $OLD_TAG == $NEW_TAG ]; then
    echo "Already got the latest Prow tag"
    exit 1
fi
read -p "Continue to change tag? (y/n):" CONFIRM
if [ "$CONFIRM" != "y" ]; then exit 1; fi
echo "$OLD_TAG => $NEW_TAG"
sed -i '' "s/$OLD_TAG/$NEW_TAG/g" README.md
for file in $(ls *.Dockerfile); do
    echo $file
    sed -i '' "s/$OLD_TAG/$NEW_TAG/g" $file
    cat $file
done
read -p "Continue to change tag? (y/n):" CONFIRM
if [ "$CONFIRM" != "y" ]; then exit 1; fi
git commit -a -m "Bump to $NEW_TAG"
git push
git tag $NEW_TAG
git push --tags

