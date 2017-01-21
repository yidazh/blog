chmod 600 travis_key
mv travis_key ~/.ssh/id_rsa
touch ~/.ssh/config
echo -e "Host 2mih.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config
rsync -vr public/* -e ssh travis@2mih.com:/home/travis/public/
