# Instructions

## Phase 1 - Learning Bash

This phase involves learning the basic syntax of bash that will be useful for
this project: arguments, commands, conditionals, loops, patterns, arrays, input
and output, commandline interface etc. Only resources will be provided, and it
is upto the group members to go through the resources, clear each others'
doubts and conduct group studies.

Some important points to clarify your doubts:

1. Bash is a programming language, or more precisely a scripting language.
   Scripting languages differ from compiled languages in that, these can be run
   and output can be obtained, as soon as you finish writing, with no further
   step -whereas in the case of compiled langauges, the source files should be
   compiled to obtain a binary, which can be run to get output. Python is another
   example of scripting language. Bash has a pretty minimal syntx, just enough
   to cover _any_ commandline scripting needs.
2. Commandline scripts are pieces of code which are called from the commmandline
   for some specific use-cases - these can be written in any programming language.
   For this project we will be using bash to write the `oeis` script.
3. To run a script from commandline in linux, they must be made "executable".
   One way to do this is `chmod 777 script-name` - the argument `777` has got
   to do with various permissions for various modes, more information for which
   can be [found here](https://www.tutorialspoint.com/unix_commands/chmod.htm).
4. To run a scipt, do `./scriptname` if the script called `scriptname` is in
   the current directory, if not, provide relative or absolute path to the script.
5. Every shell scripts (scripts that are run from shell or commandline) should
   have a first line known as "shebang" - this informs the commandline as to
   which shell should be used for running/interpreting this script. For bash we do
   `#!/usr/bin/bash` as the portion after `#!` is the location of the bash shell
   executable file. For python we would use `#!/usr/bin/python`, similarly for perl
   `#!/usr/bin/perl`. In order for a script to be run, this line is necessary.

## Phase 2 - Observing OEIS

We have the option to use the API of OEIS, but that is a easy way out, and
depends on a lot of other packages - which is not the point of this module or
mini-project. So we will be conducting brute-force web-scraping, cleaning
and presenting. For this, we need to observe the HTML structure of the OIES
webpages - to identify which tags to extract for which information. Once the
data is filtered, we can employ various tools/commands to clean filtered data,
<<<<<<< HEAD
which will make the data useful for us to proceed further. This observation
is done using "Inspect Element" option of various browsers.
=======
which will make the data useful for us to proceed further.
>>>>>>> 799d5028a25d6daea857c4eb30bbd9fc49c81bd2

## Phase 3 - Making script

The script is constructed in this phase - the project members should each
have a fork of the main repo, make changes in their fork and submit pull-requests
regularly - this is how you work on a collaborative project over GitHub using
git. The pull-requests will be regularly overseen and suggestions will be
provided by the mentor. It is at this phase that tests should be made with your
script - to check whether every feature is working as intended, and if there
are any bugs.

## Phase 4 - Presentation

Members should give a small presentation of around 10 minutes, explaining
what they learnt, how they planned the structure of script, how the script
works internally, how fast it works, what features it provides, and if there
are any future plans with this script. They should also provide a live
demonstration of the script.

For resources, check the [resources file](./RESOURCES.md)
