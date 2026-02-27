jj
#Setup & Config

Step1: Install the git bash if do not have Linux (OS) beacause git is in build in this linux Os.

Step2: Verify the version : git --version

step3: Which directory to want to make repo : then write git init command , now your directory is repo

#Basic Workflow

step1: now check git status : if any file is already exist this repo it is untracked-file: it means repo do note have about these files

step2: now you create a file in repo : like this Git-practice.md and add your current files

step3:this command is use for adding your untracked files: git add file-name: or git add .(it is add all current files that are untracked)

step4:after add this file now you can : now this file is stage step it means this file is ready for commit 

step5: commit command: git commit -m "what purpose to commit this files"

step6: now check git status: you will see nothing to commit and changes

#Viewing Changes

step1: what is changes now your repo: git log 

step2: git branch: check whihc branch you use

step3: git checkout branch-name : it means switch a particular branch (like main --> dev)

step4: git checkout -b branch-name: This command use for create a new branch and switch to current branch (master) to branch(dev)

#Some more commands : that are useful for bigneer:

step1: git restore --staged : This command are used to if by mistake you add any file : then now you staged to unstaged and your file is now untracked

step2: git restore file-name : This command are use when you some modified the file and then you realise by mistake you change something that is not need you current working directory  : then git restore file-name it is show last time what file have data contain: and modified file content removed: and also that if you by mistake delete any file after commit and you can restore this file using this command"


## DAY-23-TASKS::

#Task 1: Understanding branches

#Q1.What is a branch in Git?
Ans.A branch is a lightweight reference to a commit. Each branch represents its own version of the project history.

why:

*Work on new features safely

*Fix bugs without breaking stable code

*Collaborate with others in parallel

*Experiment and throw changes away if needed

cmd: git branch branch-name: this command is used to create a new branch.

cmd: git switch branch-name: this command is move to one branch to another branch.

cmd: git checkout -b branch-name: this command is used to create a new branch and move to immediatly this created branch

#Q2: Why do we use branches instead of committing everything to main?
Ans: We use branches instead of committing everything to the main branch because the main branch represents the stable, production-ready version of the project.

#Developers create separate branches to:

1.Develop new features

2.Fix bugs

3.Test changes safely

4.This prevents unfinished or broken code from affecting the main branch.

In a typical workflow, a developer:

1.Creates a new branch from main

2.Writes and tests code in that branch

3.Pushes changes to the branch

4.Merges the branch into main only after review and testing

Directly pushing to the main branch is usually restricted to protect the project’s stability and avoid breaking production code.

#Q3: What is HEAD in Git?
Ans. HEAD is represent latest commit on your working branch . It means when you someting commit in your branch it tells your latest commit to point to the HEAD and head is point the branch. example : HEAD → feature → commit-1 

@what is detached HEAD in Git?
A detached HEAD is used when you want to look at or work with a specific commit without affecting any branch.

#Test or debug a past version

If a bug appeared recently, you can:

1.Move to an older commit

2.Run tests

3.Find when the bug was introduced

No branch is modified during this.

#Q4: What happens to your files when you switch branches?
Ans: let example :
step1: your are on the main branch:

step2: now you move to dev branch or create a new branch:
cmd: git switch branch-name : you move to another branch and create a file name file.txt in this branch (dev). now you add and commit this file into this branch . 

step3: and you push the this file to github repo:
cmd: git push origin dev

step4: and you move the main branch:
cmd: now you check ls : this only show created file to the main branch . not show the dev branch file .

step5: Working directory update: Git changes the files in your working directory to match the branch you switch to.

step6: Branch-specific files: Files that exist only in the previous branch will not appear in the new branch.

step7: Common files: Files that are present in both branches remain the same.

step8: Committed changes: Files committed in one branch are visible only in that branch unless it is merged.

step9: Uncommitted changes: Uncommitted work may prevent switching branches if it conflicts with files in the target branch.

step10: Data safety: Git ensures that committed changes are not lost when switching branches.

step11: Tracked files are updated to match the target branch. Files that belong only to the previous branch will disappear after switching.

step12: Untracked files usually remain in the working directory, unless the target branch has a file with the same name.


#Task 2: Branching Commands — Hands-On

In your devops-git-practice repo, perform the following:

1.List all branches in your repo -- git branch

2. Create a new branch called feature-1 -- git branch feature-1

3. Switch to feature-1 -- git switch feature-1

4. Create a new branch and switch to it in a single command — call it feature-2 -- git checkout -b feature-2

5. Try using git switch to move between branches — how is it different from git checkout? : 

| Feature       | `git checkout`                 | `git switch`                |
| ------------- | ------------------------------ | --------------------------- |

| Main purpose  | Switch branches, restore files | Switch branches only        |

| Clarity       | Can be confusing               | Clear and beginner-friendly |

| Safety        | Less safe (does many things)   | Safer (single purpose)      |

| Create branch | `git checkout -b branch`       | `git switch -c branch`      |

| Restore files | Yes                            | No                          |

| Git version   | All versions                   | Git 2.23+                   |
| example       |Restore a file from another branch| this command only for switch branch|

                |git checkout main -- filename     | 


6. Delete a branch you no longer need : git branch -d or -D branch-name

#Task3: Push to GitHub

Difference between origin and upstream

Origin (your repository):
origin is the default remote name that points to your own GitHub repository (usually a fork). You push your changes to origin.

Upstream (original repository):
upstream points to the original or main repository from which your repository was forked. You fetch updates from upstream.

Usage:
origin is used for daily development work.
upstream is used to keep your fork updated with the original project.

Push behavior:
You normally push code to origin.
You usually do not push to upstream.
cmd: git push origin main
cmd: git fetch upstream

#Task4:  Pull from GitHub
1.Make a change to a file directly on GitHub (use the GitHub editor) - create main.txt

2.Pull that change to your local repo - git pull origin main

3.Answer in your notes: What is the difference between git fetch and git pull?

step1. Git fetch (download only):
git fetch downloads the latest changes from a remote repository without modifying your current branch. It lets you review changes safely before merging.

step2. Git pull (download + merge):
git pull downloads the changes and immediately merges them into your current branch.

step3. Safety:
git fetch is safer because it does not change your working files.
git pull can change files and may cause merge conflicts.

step4. Control:
git fetch gives you full control over when and how to merge.
git pull is faster but less controlled.

step5. Example:

* git fetch origin main:
after that: git diff main origin/main --name-only (See changed files only (most common))
cmd: git diff main origin/main --> See actual code changes line by line

* git merge origin/main

    After checking, merge when ready
cmd: git merge origin/main

* git pull origin main


#Task 5: clone vs fork

Task 5: Clone vs Fork
Clone any public repository from GitHub to your local machine -- done

Fork the same repository on GitHub, then clone your fork -- git clone repo-link

Answer in your notes:
What is the difference between clone and fork?
Ans. the main differenc is when you fork : it only copy a repo on the github account not save to the local machine. 
     clone : clone command usually use the when you clone your repo to the local machine. It only create a copy of repo to the local machine.

When would you clone vs fork?
done: 

After forking, how do you keep your fork in sync with the original repo?

using the upstream to up to update the fork in my github account.
git clone https://github.com/your-username/project.git

git remote add upstream https://github.com/company/project.git

git remote -v

origin → your repo

upstream → original repo

Work and push your changes
git push origin main

Get updates from the original repo

git fetch upstream

verify : git diff origin/main
then merge

git merge upstream/main



## DAY-24 - Advanced Git: Merge, Rebase, Stash & Cherry Pick

#Task 1: Git Merge — Hands-On

1. Create a new branch feature-login from main, add a couple of commits to it :
cmd: git checkout -b feature-login 

2. Switch back to main and merge feature-login into main
cmd: git switch main
cmd: git merge feature-login 

3. Observe the merge — did Git do a fast-forward merge or a merge commit?
done

4. done
5. done
6. done 

#Task 2: Git Rebase — Hands-On

1. Create a branch feature-dashboard from main, add 2-3 commits
cmd: git checkout -b feature-dashboard 
cmd: touch new.txt : git add new.txt : git commit -m "add newfile" : git push -u origin feature-dashboard

2. While on main, add a new commit (so main moves ahead)
cmd: git checkout main
cmd: touch new.txt : git add hello.txt : git commit -m "add hello.txt" :

3. Switch to feature-dashboard and rebase it onto main
cmd: git checkout feature-dashboard
cmd: git rebase main

4: Observe your git log --oneline --graph --all — how does the history look compared to a merge?
After rebase, git log --graph shows a clean linear history, whereas a merge shows branching with a merge commit.



#Task 4: Git Stash — Hands-On

1. Start making changes to a file but do not commit
cmd:    git stash apply restores stashed changes to the working directory without removing the stash entry.


cmd: stash specific file : key point: before stashing you must add to the branch
    
git stash push -m "stash configfile" config.yml

git stash list : show the all stash in list

git stash apply stash@{0} : resoter specific stash using index: also save to the stash list

git stash pop stash@{0} : resote specific stash file using index and also delete from stash list


#Task 5: Cherry Picking
