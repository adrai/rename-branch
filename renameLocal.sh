# repos <<- EOM
#     i18next
#     react-i18next
#     i18next-http-backend
# EOM
repos=`cat localRepos.txt`
for repo in $repos
do
    cd $repo
    git checkout master
    git branch -m master main
    git fetch
    git branch --unset-upstream
    git branch -u origin/main
    git symbolic-ref refs/remotes/origin/HEAD refs/remotes/origin/main
    cd ..
done