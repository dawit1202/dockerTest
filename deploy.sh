set -xe

if [ $TRAVIS_BRANCH == 'master' ] ; then
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa

  rsync -a --exclude={'/node_modules','/src','/public'} ./ newtravis@137.184.160.164:/home/newtravis/demo
 
else
  echo "Not deploying, since the branch isn't master."
fi