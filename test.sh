cd ~/Desktop/Capstone_Project/facebook-clone

git add .

echo 'Enter the commit message:'
read commitMessage

git commit -m "$commitMessage"

echo 'Enter the name of the branch:'
read branch

git push --set-upstream origin $branch


osascript -e 'display notification "push to remote" with title "SUCCESS" '