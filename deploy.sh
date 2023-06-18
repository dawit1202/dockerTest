set -xe

if [ $TRAVIS_BRANCH == 'master' ] ; then
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa

  rsync -a --exclude={'/node_modules','/src','/public'} client/ travis@137.184.160.164:/home/travis/demo/client
  rsync -a server/ travis@137.184.160.164:/home/travis/demo/server
else
  echo "Not deploying, since the branch isn't master."
fi