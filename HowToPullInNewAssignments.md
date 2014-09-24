# How to pull in new assignments

You have forked your own version of this repo from the main [Assignments](https://github.com/TIY-TSP-Rails-Fall2014/Assignments) repo for this class.

I will continue to post new assignments in this repo. In order to get those new assignments, and the support files I provide with them, you should do the following:

  git fetch upstream

  git merge upstream/master

  git push origin master

Note: in order for this to work cleanly with as little pain to you as possible (such as dealing with merge conflicts), try not to ever modify the files I provide for the assignments. Pull them in so you have them for reference, but always create your own `solution.rb` files and check those in. As long as you don't modify any files I provide, you won't have conflicts.
