rm -r public
git submodule add -f -b master https://github.com/rzntu/rzntu.github.io.git public
git add .
git commit -m "Initial commit"
git push -u origin master

hugo
cd public
git add .
git commit -m "Build website"
git push origin master
cd ..