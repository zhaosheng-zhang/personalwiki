rm vimwiki/*~
rm vimwiki/diary/*~
git add .
git commit -a -m "$(date)"
git pull
git push
