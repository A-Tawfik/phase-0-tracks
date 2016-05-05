# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control allows you to create various save points on a project so that you can roll back a feature or modification to an earlier point. This is useful for removing problematic code or going back to a version of your code that may have been better overall. This is also very helpful when multiple people are working on the same project and adding features simultaneously.

* What is a branch and why would you use one?
When you have many features to add to a project, branches allow you to work on each feature independently of the master document as not to corrupt the master until the feature has been worked out. Additionally, through version control, you are able to work on multiple iterations of a feature before merging it with your master file. Branches too are helpful to allow multiple people to work on various features independently without fighting over specific lines.

* What is a commit? What makes a good commit message?
A commit is creating a save point of a file to which you can than return to later if changes are made. By creating a save point, you are also including the recent modifications that were made to that file to the repository. A good commit message says in plain words (English, maybe) what was modified in the document at that save point. A good example would be "Add login feature". Which tells you that prior to this save point there was no 'login feature' and this commit added it.


* What is a merge conflict?
A merge conflict occurs when 2 or more branches are being merged together and the same line(s) of code have been modified on both. Git doesn't know which branch's new code to keep and which to expel. Git will alert you of a conflict and there is other software (like github) that will assist you in the merge.