#!/bin/bash

# Configuration Variables
FORKED_REPO_URL="<Your Forked Repo URL>"  # Replace with your forked repo URL
YOUR_NAME="<Your Name>"                   # Replace with your name
IC_STUDENT_ID="<IC_Student_ID>"           # Replace with your IC student ID
ASSIGNMENT_FOLDER="<assignment_folder>"   # Replace with the folder for the assignment in the repo
BRANCH_NAME="${YOUR_NAME}-${IC_STUDENT_ID}"
ASSIGNMENT_CONTENT_PATH="<path_to_assignment_files>"  # Path to your assignment content
ORIGINAL_REPO_URL="https://github.com/IC-DevOps-Career-Path/ic-devops-batch3.git"

# Exit script on errors
set -e

echo "### Step 1: Cloning the forked repository ###"
git clone "$FORKED_REPO_URL"
REPO_NAME=$(basename -s .git "$FORKED_REPO_URL")
cd "$REPO_NAME"

echo "### Step 2: Setting the upstream remote to the original repository ###"
git remote add upstream "$ORIGINAL_REPO_URL"

echo "### Step 3: Creating a new branch ###"
git checkout -b "$BRANCH_NAME"

echo "### Step 4: Creating the assignment directory ###"
ASSIGNMENT_DIR="$ASSIGNMENT_FOLDER/$YOUR_NAME-$IC_STUDENT_ID"
mkdir -p "$ASSIGNMENT_DIR"

echo "### Step 5: Adding readme.md and .gitignore ###"
cat <<EOL > "$ASSIGNMENT_DIR/readme.md"
# Assignment Submission by $YOUR_NAME

This directory contains the assignment content submitted by $YOUR_NAME ($IC_STUDENT_ID).

## Directory Structure
- Assignment content files
- \`.gitignore\` file

Thank you for reviewing my submission!
EOL

cat <<EOL > "$ASSIGNMENT_DIR/.gitignore"
# Ignore unnecessary files
*.log
*.tmp
.DS_Store
EOL

echo "### Step 6: Adding assignment content ###"
cp -r "$ASSIGNMENT_CONTENT_PATH"/* "$ASSIGNMENT_DIR/"

echo "### Step 7: Adding and committing changes ###"
git add .
git commit -m "Added assignment content for $YOUR_NAME ($IC_STUDENT_ID)"

echo "### Step 8: Pushing the branch to the forked repository ###"
git push origin "$BRANCH_NAME"

echo "### Step 9: Pull request reminder ###"
echo "Go to GitHub and create a pull request against the master branch from $BRANCH_NAME."
echo "Pull Request Description:"
echo "Added assignment content for $YOUR_NAME ($IC_STUDENT_ID)."

# Optional: If you have GitHub CLI installed, uncomment to automate PR creation
# gh pr create --title "Assignment Submission: $YOUR_NAME ($IC_STUDENT_ID)" \
# --body "This PR includes the assignment content for $YOUR_NAME ($IC_STUDENT_ID)." \
# --base master --head "$BRANCH_NAME"
