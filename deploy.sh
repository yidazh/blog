chmod 600 travis_key
mv travis_key ~/.ssh/id_rsa
rsync -vr public/* -e ssh travis@2mih.com:/home/travis/public/
