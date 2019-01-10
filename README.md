# bscfish
This repository contains an R-package with functions for basic fish parameters. It was written in order to practice building
R-Packages as well as containing the local package in a Git repository and containing it in a Github repository. 

Problems faced along the way included establishing communication between the local and Github repositories. An SSH (secure shell)
key was attempted but I don't think it worked. A connection was eventually obtained with the necessary step of entering Github
username and password in order to successfully push committed changes to code to Github. 

The following error appeared until the problem was fixed:
MacBook-Pro:bscfish brettstacy$ git push -u origin master
ERROR: Repository not found.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.

This fixed the problem by establishing the correct URL:
MacBook-Pro:bscfish brettstacy$ git remote set-url origin https://github.com/Brett-Stacy/bscfish.git


I think what happened is by setting the url for the git repository, ssh was no longer the default channel. By establishing a URL 
channel, the connection was successful, albeit with the step of entering Github username and password.
