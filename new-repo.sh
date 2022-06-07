#/bin/bash 
# use bash to create a new remote repository with the same name as the current directory

# check if git is installed
if ! type git > /dev/null 2>&1; then
  echo "git is not installed"
  exit 1
fi

# check if git is inside a repository
if [ ! -d .git ]; then
  echo "you are not in a git repository"
  exit 1
fi

# get the name of the current directory
current_dir=$(basename $(pwd))

# create a new remote repository with the same name as the current directory
git init --bare $current_dir.git

# run a bash script with name new-repo.sh
