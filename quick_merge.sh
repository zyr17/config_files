CURRENT_BRANCH=`git branch | grep -P '^\*' | awk '{print $2}'`
TARGET=master
git checkout $TARGET
git pull
git checkout $CURRENT_BRANCH
git merge $TARGET
