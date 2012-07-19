#get the current branch

branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')

if [ $branch = 'develop' ]
 then 
    echo "Current branch: $branch -> do a pull"
    git pull origin develop
 else 
    echo "Current Branch: $branch -> no pull from develop"
fi
