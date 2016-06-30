# Add existing project to Github.

So, you have been working on a project locally and then decide you really should version control it and share it with the world. One option would be to create the repository on Github, clone it locally and then copy all the files across. But it does not have to be so messy. Here is how you add an existing project to Github without cloning it first.

## Create git repo locally

We need to add a repository for your project. Git is a distributed version control system, so each machine has its own repository. This is different to centralised version control systems like Subversion, which have a single, central, repository.

Go to your project.

**$ cd my_project**

Initialise the repository.

**$ git init**

You should see the following message:
```
Initialized empty Git repository in /path/to/my_project/.git/
```
Add all your files to the repo:

__$ git add *__

Check to see that there are changes to be committed:

__$ git status__

You should see something like this:
```
> # On branch master
> #
> # Initial commit
> #
> # Changes to be committed:
> #   (use "git rm --cached <file>..." to unstage)
> #
> #   new file:   my_project.info
> #   new file:   my_project.module
> #
```
In this case, my_project.info and my_project.module are the files I have in my project.

Commit the files.

__$ git commit -m "First commit"__

You should see something like this:
```
[master (root-commit) 8201309] First commit
 2 files changed, 74 insertions(+), 0 deletions(-)
 create mode 100644 my_project.info
 create mode 100644 my_project.module
 ```

## Create Github Project
Head over to Github and create a new project.

![First image](/Assets/create_repo.png?raw=true "Page Screenshot")

## Add Github as remote origin

Now we need to push our changes to Github.

Go to the Github page for the repo. You will should see the URL for the Github repo, which you need to copy.

![Second image](/Assets/repo_url.png?raw=true "Page Screenshot")

Add this as the remote origin:

__$ git remote add origin https://github.com/yourname/my_project.git__

Pull from Github to local:

__$ git pull origin master__

And finally, push the code to Github:

__$ git push origin master__

You should see something like this:
```
Counting objects: 7, done.
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 1.71 KiB, done.
Total 6 (delta 0), reused 0 (delta 0)
To https://github.com/yourname/my_project.git
 ba2316b..3dae654  master -> master
```
That is all there is to it! Now your project is under version control and public on Github.

***
All credit goes here: [The Original Blog-post](http://befused.com/git/existing-project-github)
