#!/bin/bash
OLD_TAG=$(grep k8s-prow deck.Dockerfile | awk -F: '{print $2}')
echo "Current tag:" $OLD_TAG
echo "Checking newest tag..."
NEW_TAG=$(curl -sSL https://github.com/kubernetes/test-infra/blob/master/prow/cluster/starter.yaml?raw= | grep image:\ gcr | awk -F: '{print $3}' | head -n 1)
echo "New Prow tag:" $NEW_TAG
if [ $OLD_TAG == $NEW_TAG ]; then
    echo "Already got the newest tag"
    exit 1
fi
read -p "Continue to change tag? (y/n):" CONFIRM
if [ "$CONFIRM" != "y" ]; then exit 1; fi
for file in $(ls *.Dockerfile); do echo $file; echo $OLD_TAG=>$NEW_TAG; sed -i '' "s/$OLD_TAG/$NEW_TAG/g" $file; cat $file;  done;

