set -xe

if [ $TRAVIS_BRANCH == 'master' ] ; then
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa

  rsync -av --exclude={'/node_modules','/src','/public'} ./ travis@137.184.160.164:~/demo
 
else
  echo "Not deploying, since the branch isn't master."
fi