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
