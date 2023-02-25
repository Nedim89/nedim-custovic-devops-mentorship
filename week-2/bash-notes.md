# First we make new branch in github which is called <week-2-bandit-labs>
# In local we pull all changes on orgin/main branch

git pull # we make sync with remote repo on github
git checkout week-2-bandit-labs # We use this command to go to this new branch
mkdir week-2 # make new directory localy on my newly created branch
cd week-2 # change dir
touch bash-notes.md # make new empty file

Level 0
gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit0@bandit.labs.overthewire.org -p 2220
The authenticity of host '[bandit.labs.overthewire.org]:2220 ([13.53.149.110]:2220)' can't be established.
ECDSA key fingerprint is SHA256:IJ7FrX0mKSSHTJ63ezxjqtnOE0Hg116Aq+v5mN0+HdE.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '[bandit.labs.overthewire.org]:2220,[13.53.149.110]:2220' (ECDSA) to the list of known hosts.
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit0@bandit.labs.overthewire.org's password: 

      ,----..            ,----,          .---.
     /   /   \         ,/   .`|         /. ./|
    /   .     :      ,`   .'  :     .--'.  ' ;
   .   /   ;.  \   ;    ;     /    /__./ \ : |
  .   ;   /  ` ; .'___,/    ,' .--'.  '   \' .
  ;   |  ; \ ; | |    :     | /___/ \ |    ' '
  |   :  | ; | ' ;    |.';  ; ;   \  \;      :
  .   |  ' ' ' : `----'  |  |  \   ;  `      |
  '   ;  \; /  |     '   :  ;   .   \    .\  ;
   \   \  ',  /      |   |  '    \   \   ' \ |
    ;   :    /       '   :  |     :   '  |--"
     \   \ .'        ;   |.'       \   \ ;
  www. `---` ver     '---' he       '---" ire.org


Welcome to OverTheWire!

If you find any problems, please report them to the #wargames channel on
discord or IRC.

--[ Playing the games ]--

  This machine might hold several wargames.
  If you are playing "somegame", then:

    * USERNAMES are somegame0, somegame1, ...
    * Most LEVELS are stored in /somegame/.
    * PASSWORDS for each level are stored in /etc/somegame_pass/.

  Write-access to homedirectories is disabled. It is advised to create a
  working directory with a hard-to-guess name in /tmp/.  You can use the
  command "mktemp -d" in order to generate a random and hard to guess
  directory in /tmp/.  Read-access to both /tmp/ is disabled and to /proc
  restricted so that users cannot snoop on eachother. Files and directories
  with easily guessable or short names will be periodically deleted! The /tmp
  directory is regularly wiped.
  Please play nice:

    * don't leave orphan processes running
    * don't leave exploit-files laying around
    * don't annoy other players
    * don't post passwords or spoilers
    * again, DONT POST SPOILERS!
      This includes writeups of your solution on your blog or website!

--[ Tips ]--

  This machine has a 64bit processor and many security-features enabled
  by default, although ASLR has been switched off.  The following
  compiler flags might be interesting:

    -m32                    compile for 32bit
    -fno-stack-protector    disable ProPolice
    -Wl,-z,norelro          disable relro

  In addition, the execstack tool can be used to flag the stack as
  executable on ELF binaries.

  Finally, network-access is limited for most levels by a local
  firewall.

--[ Tools ]--

 For your convenience we have installed a few useful tools which you can find
 in the following locations:

    * gef (https://github.com/hugsy/gef) in /opt/gef/
    * pwndbg (https://github.com/pwndbg/pwndbg) in /opt/pwndbg/
    * peda (https://github.com/longld/peda.git) in /opt/peda/
    * gdbinit (https://github.com/gdbinit/Gdbinit) in /opt/gdbinit/
    * pwntools (https://github.com/Gallopsled/pwntools)
    * radare2 (http://www.radare.org/)

 Both python2 and python3 are installed.

--[ More information ]--

  For more information regarding individual wargames, visit
  http://www.overthewire.org/wargames/

  For support, questions or comments, contact us on discord or IRC.

  Enjoy your stay!

bandit0@bandit:~$ ls -slps
total 4
4 -rw-r----- 1 bandit1 bandit0 33 Feb 21 22:02 readme
bandit0@bandit:~$ ls -alps
total 24
4 drwxr-xr-x  2 root    root    4096 Feb 21 22:02 ./
4 drwxr-xr-x 70 root    root    4096 Feb 21 22:04 ../
4 -rw-r--r--  1 root    root     220 Jan  6  2022 .bash_logout
4 -rw-r--r--  1 root    root    3771 Jan  6  2022 .bashrc
4 -rw-r--r--  1 root    root     807 Jan  6  2022 .profile
4 -rw-r-----  1 bandit1 bandit0   33 Feb 21 22:02 readme
bandit0@bandit:~$ cat readme
NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL
bandit0@bandit:~$ client_loop: send disconnect: Broken pipe
gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ 

Level 1

gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit1@bandit.labs.overthewire.org -p2220
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit1@bandit.labs.overthewire.org's password: 

      ,----..            ,----,          .---.
     /   /   \         ,/   .`|         /. ./|
    /   .     :      ,`   .'  :     .--'.  ' ;
   .   /   ;.  \   ;    ;     /    /__./ \ : |
  .   ;   /  ` ; .'___,/    ,' .--'.  '   \' .
  ;   |  ; \ ; | |    :     | /___/ \ |    ' '
  |   :  | ; | ' ;    |.';  ; ;   \  \;      :
  .   |  ' ' ' : `----'  |  |  \   ;  `      |
  '   ;  \; /  |     '   :  ;   .   \    .\  ;
   \   \  ',  /      |   |  '    \   \   ' \ |
    ;   :    /       '   :  |     :   '  |--"
     \   \ .'        ;   |.'       \   \ ;
  www. `---` ver     '---' he       '---" ire.org


Welcome to OverTheWire!

If you find any problems, please report them to the #wargames channel on
discord or IRC.

--[ Playing the games ]--

  This machine might hold several wargames.
  If you are playing "somegame", then:

    * USERNAMES are somegame0, somegame1, ...
    * Most LEVELS are stored in /somegame/.
    * PASSWORDS for each level are stored in /etc/somegame_pass/.

  Write-access to homedirectories is disabled. It is advised to create a
  working directory with a hard-to-guess name in /tmp/.  You can use the
  command "mktemp -d" in order to generate a random and hard to guess
  directory in /tmp/.  Read-access to both /tmp/ is disabled and to /proc
  restricted so that users cannot snoop on eachother. Files and directories
  with easily guessable or short names will be periodically deleted! The /tmp
  directory is regularly wiped.
  Please play nice:

    * don't leave orphan processes running
    * don't leave exploit-files laying around
    * don't annoy other players
    * don't post passwords or spoilers
    * again, DONT POST SPOILERS!
      This includes writeups of your solution on your blog or website!

--[ Tips ]--

  This machine has a 64bit processor and many security-features enabled
  by default, although ASLR has been switched off.  The following
  compiler flags might be interesting:

    -m32                    compile for 32bit
    -fno-stack-protector    disable ProPolice
    -Wl,-z,norelro          disable relro

  In addition, the execstack tool can be used to flag the stack as
  executable on ELF binaries.

  Finally, network-access is limited for most levels by a local
  firewall.

--[ Tools ]--

 For your convenience we have installed a few useful tools which you can find
 in the following locations:

    * gef (https://github.com/hugsy/gef) in /opt/gef/
    * pwndbg (https://github.com/pwndbg/pwndbg) in /opt/pwndbg/
    * peda (https://github.com/longld/peda.git) in /opt/peda/
    * gdbinit (https://github.com/gdbinit/Gdbinit) in /opt/gdbinit/
    * pwntools (https://github.com/Gallopsled/pwntools)
    * radare2 (http://www.radare.org/)

 Both python2 and python3 are installed.

--[ More information ]--

  For more information regarding individual wargames, visit
  http://www.overthewire.org/wargames/

  For support, questions or comments, contact us on discord or IRC.

  Enjoy your stay!

bandit1@bandit:~$ ls -la
total 24
-rw-r-----  1 bandit2 bandit1   33 Feb 21 22:03 -
drwxr-xr-x  2 root    root    4096 Feb 21 22:03 .
drwxr-xr-x 70 root    root    4096 Feb 21 22:04 ..
-rw-r--r--  1 root    root     220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root    root    3771 Jan  6  2022 .bashrc
-rw-r--r--  1 root    root     807 Jan  6  2022 .profile
bandit1@bandit:~$ cat -
^C
bandit1@bandit:~$ cat -
^C
bandit1@bandit:~$ sudo cat -
sudo: /usr/bin/sudo must be owned by uid 0 and have the setuid bit set
bandit1@bandit:~$ vi -
Vim: Reading from stdin...
^C

bandit1@bandit:~$ cat --
--help              --number-nonblank   --show-ends         --show-tabs         --version           
--number            --show-all          --show-nonprinting  --squeeze-blank     
bandit1@bandit:~$ cat ./
-             .bash_logout  .bashrc       .profile      
bandit1@bandit:~$ cat ./
-             .bash_logout  .bashrc       .profile      
bandit1@bandit:~$ cat ./
-             .bash_logout  .bashrc       .profile      
bandit1@bandit:~$ cat ./-
rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi
bandit1@bandit:~$ cat -
^C
bandit1@bandit:~$ client_loop: send disconnect: Broken pipe
gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ 

Level 2

gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit2@bandit.labs.overthewire.org -p 2220
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit2@bandit.labs.overthewire.org's password: 

      ,----..            ,----,          .---.
     /   /   \         ,/   .`|         /. ./|
    /   .     :      ,`   .'  :     .--'.  ' ;
   .   /   ;.  \   ;    ;     /    /__./ \ : |
  .   ;   /  ` ; .'___,/    ,' .--'.  '   \' .
  ;   |  ; \ ; | |    :     | /___/ \ |    ' '
  |   :  | ; | ' ;    |.';  ; ;   \  \;      :
  .   |  ' ' ' : `----'  |  |  \   ;  `      |
  '   ;  \; /  |     '   :  ;   .   \    .\  ;
   \   \  ',  /      |   |  '    \   \   ' \ |
    ;   :    /       '   :  |     :   '  |--"
     \   \ .'        ;   |.'       \   \ ;
  www. `---` ver     '---' he       '---" ire.org


Welcome to OverTheWire!

If you find any problems, please report them to the #wargames channel on
discord or IRC.

--[ Playing the games ]--

  This machine might hold several wargames.
  If you are playing "somegame", then:

    * USERNAMES are somegame0, somegame1, ...
    * Most LEVELS are stored in /somegame/.
    * PASSWORDS for each level are stored in /etc/somegame_pass/.

  Write-access to homedirectories is disabled. It is advised to create a
  working directory with a hard-to-guess name in /tmp/.  You can use the
  command "mktemp -d" in order to generate a random and hard to guess
  directory in /tmp/.  Read-access to both /tmp/ is disabled and to /proc
  restricted so that users cannot snoop on eachother. Files and directories
  with easily guessable or short names will be periodically deleted! The /tmp
  directory is regularly wiped.
  Please play nice:

    * don't leave orphan processes running
    * don't leave exploit-files laying around
    * don't annoy other players
    * don't post passwords or spoilers
    * again, DONT POST SPOILERS!
      This includes writeups of your solution on your blog or website!

--[ Tips ]--

  This machine has a 64bit processor and many security-features enabled
  by default, although ASLR has been switched off.  The following
  compiler flags might be interesting:

    -m32                    compile for 32bit
    -fno-stack-protector    disable ProPolice
    -Wl,-z,norelro          disable relro

  In addition, the execstack tool can be used to flag the stack as
  executable on ELF binaries.

  Finally, network-access is limited for most levels by a local
  firewall.

--[ Tools ]--

 For your convenience we have installed a few useful tools which you can find
 in the following locations:

    * gef (https://github.com/hugsy/gef) in /opt/gef/
    * pwndbg (https://github.com/pwndbg/pwndbg) in /opt/pwndbg/
    * peda (https://github.com/longld/peda.git) in /opt/peda/
    * gdbinit (https://github.com/gdbinit/Gdbinit) in /opt/gdbinit/
    * pwntools (https://github.com/Gallopsled/pwntools)
    * radare2 (http://www.radare.org/)

 Both python2 and python3 are installed.

--[ More information ]--

  For more information regarding individual wargames, visit
  http://www.overthewire.org/wargames/

  For support, questions or comments, contact us on discord or IRC.

  Enjoy your stay!

bandit2@bandit:~$ ls -la
total 24
drwxr-xr-x  2 root    root    4096 Feb 21 22:03 .
drwxr-xr-x 70 root    root    4096 Feb 21 22:04 ..
-rw-r--r--  1 root    root     220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root    root    3771 Jan  6  2022 .bashrc
-rw-r--r--  1 root    root     807 Jan  6  2022 .profile
-rw-r-----  1 bandit3 bandit2   33 Feb 21 22:03 spaces in this filename
bandit2@bandit:~$ cat spaces\ in\ this\ filename 
aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG
bandit2@bandit:~$ client_loop: send disconnect: Broken pipe
gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ 

Level 3
gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit3@bandit.labs.overthewire.org -p 2220
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit3@bandit.labs.overthewire.org's password: 

      ,----..            ,----,          .---.
     /   /   \         ,/   .`|         /. ./|
    /   .     :      ,`   .'  :     .--'.  ' ;
   .   /   ;.  \   ;    ;     /    /__./ \ : |
  .   ;   /  ` ; .'___,/    ,' .--'.  '   \' .
  ;   |  ; \ ; | |    :     | /___/ \ |    ' '
  |   :  | ; | ' ;    |.';  ; ;   \  \;      :
  .   |  ' ' ' : `----'  |  |  \   ;  `      |
  '   ;  \; /  |     '   :  ;   .   \    .\  ;
   \   \  ',  /      |   |  '    \   \   ' \ |
    ;   :    /       '   :  |     :   '  |--"
     \   \ .'        ;   |.'       \   \ ;
  www. `---` ver     '---' he       '---" ire.org


Welcome to OverTheWire!

If you find any problems, please report them to the #wargames channel on
discord or IRC.

--[ Playing the games ]--

  This machine might hold several wargames.
  If you are playing "somegame", then:

    * USERNAMES are somegame0, somegame1, ...
    * Most LEVELS are stored in /somegame/.
    * PASSWORDS for each level are stored in /etc/somegame_pass/.

  Write-access to homedirectories is disabled. It is advised to create a
  working directory with a hard-to-guess name in /tmp/.  You can use the
  command "mktemp -d" in order to generate a random and hard to guess
  directory in /tmp/.  Read-access to both /tmp/ is disabled and to /proc
  restricted so that users cannot snoop on eachother. Files and directories
  with easily guessable or short names will be periodically deleted! The /tmp
  directory is regularly wiped.
  Please play nice:

    * don't leave orphan processes running
    * don't leave exploit-files laying around
    * don't annoy other players
    * don't post passwords or spoilers
    * again, DONT POST SPOILERS!
      This includes writeups of your solution on your blog or website!

--[ Tips ]--

  This machine has a 64bit processor and many security-features enabled
  by default, although ASLR has been switched off.  The following
  compiler flags might be interesting:

    -m32                    compile for 32bit
    -fno-stack-protector    disable ProPolice
    -Wl,-z,norelro          disable relro

  In addition, the execstack tool can be used to flag the stack as
  executable on ELF binaries.

  Finally, network-access is limited for most levels by a local
  firewall.

--[ Tools ]--

 For your convenience we have installed a few useful tools which you can find
 in the following locations:

    * gef (https://github.com/hugsy/gef) in /opt/gef/
    * pwndbg (https://github.com/pwndbg/pwndbg) in /opt/pwndbg/
    * peda (https://github.com/longld/peda.git) in /opt/peda/
    * gdbinit (https://github.com/gdbinit/Gdbinit) in /opt/gdbinit/
    * pwntools (https://github.com/Gallopsled/pwntools)
    * radare2 (http://www.radare.org/)

 Both python2 and python3 are installed.

--[ More information ]--

  For more information regarding individual wargames, visit
  http://www.overthewire.org/wargames/

  For support, questions or comments, contact us on discord or IRC.

  Enjoy your stay!

bandit3@bandit:~$ ls -la
total 24
drwxr-xr-x  3 root root 4096 Feb 21 22:03 .
drwxr-xr-x 70 root root 4096 Feb 21 22:04 ..
-rw-r--r--  1 root root  220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root root 3771 Jan  6  2022 .bashrc
drwxr-xr-x  2 root root 4096 Feb 21 22:03 inhere
-rw-r--r--  1 root root  807 Jan  6  2022 .profile
bandit3@bandit:~$ cd inhere
bandit3@bandit:~/inhere$ ls -la
total 12
drwxr-xr-x 2 root    root    4096 Feb 21 22:03 .
drwxr-xr-x 3 root    root    4096 Feb 21 22:03 ..
-rw-r----- 1 bandit4 bandit3   33 Feb 21 22:03 .hidden
bandit3@bandit:~/inhere$ cat .hidden
2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe
bandit3@bandit:~/inhere$ client_loop: send disconnect: Broken pipe
gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ 

Level 4
gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit4@bandit.labs.overthewire.org -p 2220
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit4@bandit.labs.overthewire.org's password: 

      ,----..            ,----,          .---.
     /   /   \         ,/   .`|         /. ./|
    /   .     :      ,`   .'  :     .--'.  ' ;
   .   /   ;.  \   ;    ;     /    /__./ \ : |
  .   ;   /  ` ; .'___,/    ,' .--'.  '   \' .
  ;   |  ; \ ; | |    :     | /___/ \ |    ' '
  |   :  | ; | ' ;    |.';  ; ;   \  \;      :
  .   |  ' ' ' : `----'  |  |  \   ;  `      |
  '   ;  \; /  |     '   :  ;   .   \    .\  ;
   \   \  ',  /      |   |  '    \   \   ' \ |
    ;   :    /       '   :  |     :   '  |--"
     \   \ .'        ;   |.'       \   \ ;
  www. `---` ver     '---' he       '---" ire.org


Welcome to OverTheWire!

If you find any problems, please report them to the #wargames channel on
discord or IRC.

--[ Playing the games ]--

  This machine might hold several wargames.
  If you are playing "somegame", then:

    * USERNAMES are somegame0, somegame1, ...
    * Most LEVELS are stored in /somegame/.
    * PASSWORDS for each level are stored in /etc/somegame_pass/.

  Write-access to homedirectories is disabled. It is advised to create a
  working directory with a hard-to-guess name in /tmp/.  You can use the
  command "mktemp -d" in order to generate a random and hard to guess
  directory in /tmp/.  Read-access to both /tmp/ is disabled and to /proc
  restricted so that users cannot snoop on eachother. Files and directories
  with easily guessable or short names will be periodically deleted! The /tmp
  directory is regularly wiped.
  Please play nice:

    * don't leave orphan processes running
    * don't leave exploit-files laying around
    * don't annoy other players
    * don't post passwords or spoilers
    * again, DONT POST SPOILERS!
      This includes writeups of your solution on your blog or website!

--[ Tips ]--

  This machine has a 64bit processor and many security-features enabled
  by default, although ASLR has been switched off.  The following
  compiler flags might be interesting:

    -m32                    compile for 32bit
    -fno-stack-protector    disable ProPolice
    -Wl,-z,norelro          disable relro

  In addition, the execstack tool can be used to flag the stack as
  executable on ELF binaries.

  Finally, network-access is limited for most levels by a local
  firewall.

--[ Tools ]--

 For your convenience we have installed a few useful tools which you can find
 in the following locations:

    * gef (https://github.com/hugsy/gef) in /opt/gef/
    * pwndbg (https://github.com/pwndbg/pwndbg) in /opt/pwndbg/
    * peda (https://github.com/longld/peda.git) in /opt/peda/
    * gdbinit (https://github.com/gdbinit/Gdbinit) in /opt/gdbinit/
    * pwntools (https://github.com/Gallopsled/pwntools)
    * radare2 (http://www.radare.org/)

 Both python2 and python3 are installed.

--[ More information ]--

  For more information regarding individual wargames, visit
  http://www.overthewire.org/wargames/

  For support, questions or comments, contact us on discord or IRC.

  Enjoy your stay!

bandit4@bandit:~$ ls -la
total 24
drwxr-xr-x  3 root root 4096 Feb 21 22:03 .
drwxr-xr-x 70 root root 4096 Feb 21 22:04 ..
-rw-r--r--  1 root root  220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root root 3771 Jan  6  2022 .bashrc
drwxr-xr-x  2 root root 4096 Feb 21 22:03 inhere
-rw-r--r--  1 root root  807 Jan  6  2022 .profile
bandit4@bandit:~$ cd inhere
bandit4@bandit:~/inhere$ ls -la
total 48
drwxr-xr-x 2 root    root    4096 Feb 21 22:03 .
drwxr-xr-x 3 root    root    4096 Feb 21 22:03 ..
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file00
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file01
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file02
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file03
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file04
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file05
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file06
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file07
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file08
-rw-r----- 1 bandit5 bandit4   33 Feb 21 22:03 -file09
bandit4@bandit:~/inhere$ file -i *
file: Cannot open `ile00' (No such file or directory)
file: Cannot open `ile01' (No such file or directory)
file: Cannot open `ile02' (No such file or directory)
file: Cannot open `ile03' (No such file or directory)
file: Cannot open `ile04' (No such file or directory)
file: Cannot open `ile05' (No such file or directory)
file: Cannot open `ile06' (No such file or directory)
file: Cannot open `ile07' (No such file or directory)
file: Cannot open `ile08' (No such file or directory)
file: Cannot open `ile09' (No such file or directory)
bandit4@bandit:~/inhere$ file .
.: directory
bandit4@bandit:~/inhere$ file -file07
file: Cannot open `ile07' (No such file or directory)
bandit4@bandit:~/inhere$ sudo file ./-file07
sudo: /usr/bin/sudo must be owned by uid 0 and have the setuid bit set
bandit4@bandit:~/inhere$ cat -file07
cat: invalid option -- 'f'
Try 'cat --help' for more information.
bandit4@bandit:~/inhere$ cat ./-file07
lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR
bandit4@bandit:~/inhere$ cat ./-file08
d��
_8�o����W��[1m��)$�����R�bandit4@bandit:~/inhere$ file ./
./: directory
bandit4@bandit:~/inhere$ file ./*
./-file00: data
./-file01: data
./-file02: data
./-file03: data
./-file04: data
./-file05: Non-ISO extended-ASCII text, with NEL line terminators
./-file06: Non-ISO extended-ASCII text, with no line terminators, with escape sequences
./-file07: ASCII text
./-file08: data
./-file09: data
bandit4@bandit:~/inhere$ cat ./-file07
lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR
bandit4@bandit:~/inhere$ client_loop: send disconnect: Broken pipe
gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ 


Level 5

gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit@bandit.labs.overthewire.org -p 2220
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

!!! You are trying to log into this SSH server on port 2220 with a username
!!! that does not match the bandit game.

bandit@bandit.labs.overthewire.org's password: 
Permission denied, please try again.
bandit@bandit.labs.overthewire.org's password: 

gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit5@bandit.labs.overthewire.org -p 2220
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit5@bandit.labs.overthewire.org's password: 

      ,----..            ,----,          .---.
     /   /   \         ,/   .`|         /. ./|
    /   .     :      ,`   .'  :     .--'.  ' ;
   .   /   ;.  \   ;    ;     /    /__./ \ : |
  .   ;   /  ` ; .'___,/    ,' .--'.  '   \' .
  ;   |  ; \ ; | |    :     | /___/ \ |    ' '
  |   :  | ; | ' ;    |.';  ; ;   \  \;      :
  .   |  ' ' ' : `----'  |  |  \   ;  `      |
  '   ;  \; /  |     '   :  ;   .   \    .\  ;
   \   \  ',  /      |   |  '    \   \   ' \ |
    ;   :    /       '   :  |     :   '  |--"
     \   \ .'        ;   |.'       \   \ ;
  www. `---` ver     '---' he       '---" ire.org


Welcome to OverTheWire!

If you find any problems, please report them to the #wargames channel on
discord or IRC.

--[ Playing the games ]--

  This machine might hold several wargames.
  If you are playing "somegame", then:

    * USERNAMES are somegame0, somegame1, ...
    * Most LEVELS are stored in /somegame/.
    * PASSWORDS for each level are stored in /etc/somegame_pass/.

  Write-access to homedirectories is disabled. It is advised to create a
  working directory with a hard-to-guess name in /tmp/.  You can use the
  command "mktemp -d" in order to generate a random and hard to guess
  directory in /tmp/.  Read-access to both /tmp/ is disabled and to /proc
  restricted so that users cannot snoop on eachother. Files and directories
  with easily guessable or short names will be periodically deleted! The /tmp
  directory is regularly wiped.
  Please play nice:

    * don't leave orphan processes running
    * don't leave exploit-files laying around
    * don't annoy other players
    * don't post passwords or spoilers
    * again, DONT POST SPOILERS!
      This includes writeups of your solution on your blog or website!

--[ Tips ]--

  This machine has a 64bit processor and many security-features enabled
  by default, although ASLR has been switched off.  The following
  compiler flags might be interesting:

    -m32                    compile for 32bit
    -fno-stack-protector    disable ProPolice
    -Wl,-z,norelro          disable relro

  In addition, the execstack tool can be used to flag the stack as
  executable on ELF binaries.

  Finally, network-access is limited for most levels by a local
  firewall.

--[ Tools ]--

 For your convenience we have installed a few useful tools which you can find
 in the following locations:

    * gef (https://github.com/hugsy/gef) in /opt/gef/
    * pwndbg (https://github.com/pwndbg/pwndbg) in /opt/pwndbg/
    * peda (https://github.com/longld/peda.git) in /opt/peda/
    * gdbinit (https://github.com/gdbinit/Gdbinit) in /opt/gdbinit/
    * pwntools (https://github.com/Gallopsled/pwntools)
    * radare2 (http://www.radare.org/)

 Both python2 and python3 are installed.

--[ More information ]--

  For more information regarding individual wargames, visit
  http://www.overthewire.org/wargames/

  For support, questions or comments, contact us on discord or IRC.

  Enjoy your stay!

bandit5@bandit:~$ ls -la
total 24
drwxr-xr-x  3 root root    4096 Feb 21 22:03 .
drwxr-xr-x 70 root root    4096 Feb 21 22:04 ..
-rw-r--r--  1 root root     220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root root    3771 Jan  6  2022 .bashrc
drwxr-x--- 22 root bandit5 4096 Feb 21 22:03 inhere
-rw-r--r--  1 root root     807 Jan  6  2022 .profile
bandit5@bandit:~$ cd inhere
bandit5@bandit:~/inhere$ ls- la
Command 'ls-' not found, did you mean:
  command 'lsd' from snap lsd (0.16.0)
  command 'lsc' from deb livescript (1.6.1+dfsg-2)
  command 'lsw' from deb suckless-tools (46-1)
  command 'lsm' from deb lsm (1.0.4-2)
  command 'ls' from deb coreutils (8.32-4.1ubuntu1)
  command 'lsh' from deb lsh-client (2.1-13)
See 'snap info <snapname>' for additional versions.
bandit5@bandit:~/inhere$ ls -la
total 88
drwxr-x--- 22 root bandit5 4096 Feb 21 22:03 .
drwxr-xr-x  3 root root    4096 Feb 21 22:03 ..
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere00
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere01
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere02
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere03
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere04
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere05
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere06
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere07
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere08
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere09
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere10
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere11
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere12
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere13
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere14
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere15
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere16
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere17
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere18
drwxr-x---  2 root bandit5 4096 Feb 21 22:03 maybehere19
bandit5@bandit:~/inhere$ find ./* -type f -size 1033c
./maybehere07/.file2
bandit5@bandit:~/inhere$ file ./maybehere07/.file2
./maybehere07/.file2: ASCII text, with very long lines (1000)
bandit5@bandit:~/inhere$ find ./* -type f -size 1033c ! executable
find: paths must precede expression: `executable'
bandit5@bandit:~/inhere$ find ./* -type f -size 1033c ! -executable
./maybehere07/.file2
bandit5@bandit:~/inhere$ cat ./maybehere07/.file2
P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        bandit5@bandit:~/inhere$ client_loop: send disconnect: Broken pipe
gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ 

Level 6

gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit6@bandit.labs.overthewire.org -p 2220
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit6@bandit.labs.overthewire.org's password: 

      ,----..            ,----,          .---.
     /   /   \         ,/   .`|         /. ./|
    /   .     :      ,`   .'  :     .--'.  ' ;
   .   /   ;.  \   ;    ;     /    /__./ \ : |
  .   ;   /  ` ; .'___,/    ,' .--'.  '   \' .
  ;   |  ; \ ; | |    :     | /___/ \ |    ' '
  |   :  | ; | ' ;    |.';  ; ;   \  \;      :
  .   |  ' ' ' : `----'  |  |  \   ;  `      |
  '   ;  \; /  |     '   :  ;   .   \    .\  ;
   \   \  ',  /      |   |  '    \   \   ' \ |
    ;   :    /       '   :  |     :   '  |--"
     \   \ .'        ;   |.'       \   \ ;
  www. `---` ver     '---' he       '---" ire.org


Welcome to OverTheWire!

If you find any problems, please report them to the #wargames channel on
discord or IRC.

--[ Playing the games ]--

  This machine might hold several wargames.
  If you are playing "somegame", then:

    * USERNAMES are somegame0, somegame1, ...
    * Most LEVELS are stored in /somegame/.
    * PASSWORDS for each level are stored in /etc/somegame_pass/.

  Write-access to homedirectories is disabled. It is advised to create a
  working directory with a hard-to-guess name in /tmp/.  You can use the
  command "mktemp -d" in order to generate a random and hard to guess
  directory in /tmp/.  Read-access to both /tmp/ is disabled and to /proc
  restricted so that users cannot snoop on eachother. Files and directories
  with easily guessable or short names will be periodically deleted! The /tmp
  directory is regularly wiped.
  Please play nice:

    * don't leave orphan processes running
    * don't leave exploit-files laying around
    * don't annoy other players
    * don't post passwords or spoilers
    * again, DONT POST SPOILERS!
      This includes writeups of your solution on your blog or website!

--[ Tips ]--

  This machine has a 64bit processor and many security-features enabled
  by default, although ASLR has been switched off.  The following
  compiler flags might be interesting:

    -m32                    compile for 32bit
    -fno-stack-protector    disable ProPolice
    -Wl,-z,norelro          disable relro

  In addition, the execstack tool can be used to flag the stack as
  executable on ELF binaries.

  Finally, network-access is limited for most levels by a local
  firewall.

--[ Tools ]--

 For your convenience we have installed a few useful tools which you can find
 in the following locations:

    * gef (https://github.com/hugsy/gef) in /opt/gef/
    * pwndbg (https://github.com/pwndbg/pwndbg) in /opt/pwndbg/
    * peda (https://github.com/longld/peda.git) in /opt/peda/
    * gdbinit (https://github.com/gdbinit/Gdbinit) in /opt/gdbinit/
    * pwntools (https://github.com/Gallopsled/pwntools)
    * radare2 (http://www.radare.org/)

 Both python2 and python3 are installed.

--[ More information ]--

  For more information regarding individual wargames, visit
  http://www.overthewire.org/wargames/

  For support, questions or comments, contact us on discord or IRC.

  Enjoy your stay!

bandit6@bandit:~$ ls -la
total 20
drwxr-xr-x  2 root root 4096 Feb 21 22:02 .
drwxr-xr-x 70 root root 4096 Feb 21 22:04 ..
-rw-r--r--  1 root root  220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root root 3771 Jan  6  2022 .bashrc
-rw-r--r--  1 root root  807 Jan  6  2022 .profile
bandit6@bandit:~$ cd /
bandit6@bandit:/$ ls -la
total 184
drwxr-xr-x  22 root root  4096 Feb 24 22:58 .
drwxr-xr-x  22 root root  4096 Feb 24 22:58 ..
lrwxrwxrwx   1 root root     7 Feb 16 02:09 bin -> usr/bin
drwxr-xr-x   4 root root  4096 Feb 16 02:14 boot
drwxr-xr-x  15 root root  3260 Feb 24 22:58 dev
drwxr-xr-x   7 root root  4096 Feb 21 22:03 drifter
drwxr-xr-x 108 root root 12288 Feb 21 22:04 etc
drwxr-xr-x   3 root root  4096 Feb 21 22:03 formulaone
drwxr-xr-x  70 root root  4096 Feb 21 22:04 home
drwxr-xr-x   8 root root  4096 Feb 21 22:04 krypton
lrwxrwxrwx   1 root root     7 Feb 16 02:09 lib -> usr/lib
lrwxrwxrwx   1 root root     9 Feb 16 02:09 lib32 -> usr/lib32
lrwxrwxrwx   1 root root     9 Feb 16 02:09 lib64 -> usr/lib64
lrwxrwxrwx   1 root root    10 Feb 16 02:09 libx32 -> usr/libx32
drwx------   2 root root 16384 Feb 16 02:12 lost+found
drwxr-xr-x   2 root root  4096 Feb 16 02:09 media
drwxr-xr-x   2 root root  4096 Feb 16 02:09 mnt
drwxr-xr-x   7 root root  4096 Feb 21 21:59 opt
dr-xr-xr-x 512 root root     0 Feb 24 22:57 proc
drwx------   6 root root  4096 Feb 21 22:04 root
drwxr-xr-x  26 root root  1020 Feb 25 06:43 run
lrwxrwxrwx   1 root root     8 Feb 16 02:09 sbin -> usr/sbin
drwxr-xr-x   8 root root  4096 Feb 16 02:13 snap
drwxr-xr-x   2 root root  4096 Feb 16 02:09 srv
dr-xr-xr-x  13 root root     0 Feb 24 22:57 sys
drwxrwx-wt 367 root root 98304 Feb 25 10:11 tmp
drwxr-xr-x  14 root root  4096 Feb 21 22:03 usr
drwxr-xr-x  13 root root  4096 Feb 21 22:03 var
bandit6@bandit:/$ find /* -user bandit7 -group bandit6 -size 33c
find: ‘/boot/efi’: Permission denied
find: ‘/dev/mqueue’: Permission denied
find: ‘/dev/shm’: Permission denied
find: ‘/drifter/drifter14_src/axTLS’: Permission denied
find: ‘/etc/polkit-1/localauthority’: Permission denied
find: ‘/etc/multipath’: Permission denied
find: ‘/etc/sudoers.d’: Permission denied
find: ‘/etc/ssl/private’: Permission denied
find: ‘/home/drifter6/data’: Permission denied
find: ‘/home/drifter8/chroot’: Permission denied
find: ‘/home/bandit27-git’: Permission denied
find: ‘/home/bandit31-git’: Permission denied
find: ‘/home/ubuntu’: Permission denied
find: ‘/home/bandit29-git’: Permission denied
find: ‘/home/bandit28-git’: Permission denied
find: ‘/home/bandit5/inhere’: Permission denied
find: ‘/home/bandit30-git’: Permission denied
find: ‘/lost+found’: Permission denied
find: ‘/proc/tty/driver’: Permission denied
find: ‘/proc/623810/task/623810/fd/6’: No such file or directory
find: ‘/proc/623810/task/623810/fdinfo/6’: No such file or directory
find: ‘/proc/623810/fd/5’: No such file or directory
find: ‘/proc/623810/fdinfo/5’: No such file or directory
find: ‘/root’: Permission denied
find: ‘/run/chrony’: Permission denied
find: ‘/run/user/11008’: Permission denied
find: ‘/run/user/11017’: Permission denied
find: ‘/run/user/11015’: Permission denied
find: ‘/run/user/11026’: Permission denied
find: ‘/run/user/11007’: Permission denied
find: ‘/run/user/11023’: Permission denied
find: ‘/run/user/8004’: Permission denied
find: ‘/run/user/11022’: Permission denied
find: ‘/run/user/11003’: Permission denied
find: ‘/run/user/11024’: Permission denied
find: ‘/run/user/11019’: Permission denied
find: ‘/run/user/11025’: Permission denied
find: ‘/run/user/11018’: Permission denied
find: ‘/run/user/11021’: Permission denied
find: ‘/run/user/11011’: Permission denied
find: ‘/run/user/11002’: Permission denied
find: ‘/run/user/11014’: Permission denied
find: ‘/run/user/11009’: Permission denied
find: ‘/run/user/11006/systemd/inaccessible/dir’: Permission denied
find: ‘/run/user/11013’: Permission denied
find: ‘/run/user/11016’: Permission denied
find: ‘/run/user/11020’: Permission denied
find: ‘/run/user/11001’: Permission denied
find: ‘/run/user/11012’: Permission denied
find: ‘/run/user/11005’: Permission denied
find: ‘/run/user/11004’: Permission denied
find: ‘/run/user/11000’: Permission denied
find: ‘/run/sudo’: Permission denied
find: ‘/run/screen/S-bandit20’: Permission denied
find: ‘/run/multipath’: Permission denied
find: ‘/run/cryptsetup’: Permission denied
find: ‘/run/lvm’: Permission denied
find: ‘/run/credentials/systemd-sysusers.service’: Permission denied
find: ‘/run/systemd/propagate’: Permission denied
find: ‘/run/systemd/unit-root’: Permission denied
find: ‘/run/systemd/inaccessible/dir’: Permission denied
find: ‘/run/lock/lvm’: Permission denied
find: ‘/snap/core18/2679/etc/ssl/private’: Permission denied
find: ‘/snap/core18/2679/root’: Permission denied
find: ‘/snap/core18/2679/var/cache/ldconfig’: Permission denied
find: ‘/snap/core18/2679/var/lib/private’: Permission denied
find: ‘/snap/core20/1822/etc/ssl/private’: Permission denied
find: ‘/snap/core20/1822/root’: Permission denied
find: ‘/snap/core20/1822/var/cache/ldconfig’: Permission denied
find: ‘/snap/core20/1822/var/cache/private’: Permission denied
find: ‘/snap/core20/1822/var/lib/private’: Permission denied
find: ‘/snap/core20/1822/var/lib/snapd/void’: Permission denied
find: ‘/sys/kernel/tracing’: Permission denied
find: ‘/sys/kernel/debug’: Permission denied
find: ‘/sys/fs/pstore’: Permission denied
find: ‘/sys/fs/bpf’: Permission denied
find: ‘/tmp’: Permission denied
find: ‘/var/cache/apt/archives/partial’: Permission denied
find: ‘/var/cache/private’: Permission denied
find: ‘/var/cache/pollinate’: Permission denied
find: ‘/var/cache/apparmor/e10c1cf9.0’: Permission denied
find: ‘/var/cache/apparmor/c47eabf7.0’: Permission denied
find: ‘/var/cache/ldconfig’: Permission denied
find: ‘/var/crash’: Permission denied
find: ‘/var/log’: Permission denied
find: ‘/var/snap/lxd/common/lxd’: Permission denied
find: ‘/var/tmp’: Permission denied
find: ‘/var/spool/cron/crontabs’: Permission denied
find: ‘/var/spool/rsyslog’: Permission denied
find: ‘/var/spool/bandit24’: Permission denied
find: ‘/var/lib/apt/lists/partial’: Permission denied
find: ‘/var/lib/polkit-1’: Permission denied
find: ‘/var/lib/ubuntu-advantage/apt-esm/var/lib/apt/lists/partial’: Permission denied
find: ‘/var/lib/private’: Permission denied
find: ‘/var/lib/chrony’: Permission denied
find: ‘/var/lib/amazon’: Permission denied
/var/lib/dpkg/info/bandit7.password
find: ‘/var/lib/snapd/void’: Permission denied
find: ‘/var/lib/snapd/cookie’: Permission denied
find: ‘/var/lib/update-notifier/package-data-downloads/partial’: Permission denied
bandit6@bandit:/$ cat /var/lib/dpkg/info/bandit7.password
z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S
timed out waiting for input: auto-logout
Connection to bandit.labs.overthewire.org closed.
gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ 

Level 7

gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit7@bandit.labs.overthewire.org -p 2220
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit7@bandit.labs.overthewire.org's password: 

      ,----..            ,----,          .---.
     /   /   \         ,/   .`|         /. ./|
    /   .     :      ,`   .'  :     .--'.  ' ;
   .   /   ;.  \   ;    ;     /    /__./ \ : |
  .   ;   /  ` ; .'___,/    ,' .--'.  '   \' .
  ;   |  ; \ ; | |    :     | /___/ \ |    ' '
  |   :  | ; | ' ;    |.';  ; ;   \  \;      :
  .   |  ' ' ' : `----'  |  |  \   ;  `      |
  '   ;  \; /  |     '   :  ;   .   \    .\  ;
   \   \  ',  /      |   |  '    \   \   ' \ |
    ;   :    /       '   :  |     :   '  |--"
     \   \ .'        ;   |.'       \   \ ;
  www. `---` ver     '---' he       '---" ire.org


Welcome to OverTheWire!

If you find any problems, please report them to the #wargames channel on
discord or IRC.

--[ Playing the games ]--

  This machine might hold several wargames.
  If you are playing "somegame", then:

    * USERNAMES are somegame0, somegame1, ...
    * Most LEVELS are stored in /somegame/.
    * PASSWORDS for each level are stored in /etc/somegame_pass/.

  Write-access to homedirectories is disabled. It is advised to create a
  working directory with a hard-to-guess name in /tmp/.  You can use the
  command "mktemp -d" in order to generate a random and hard to guess
  directory in /tmp/.  Read-access to both /tmp/ is disabled and to /proc
  restricted so that users cannot snoop on eachother. Files and directories
  with easily guessable or short names will be periodically deleted! The /tmp
  directory is regularly wiped.
  Please play nice:

    * don't leave orphan processes running
    * don't leave exploit-files laying around
    * don't annoy other players
    * don't post passwords or spoilers
    * again, DONT POST SPOILERS!
      This includes writeups of your solution on your blog or website!

--[ Tips ]--

  This machine has a 64bit processor and many security-features enabled
  by default, although ASLR has been switched off.  The following
  compiler flags might be interesting:

    -m32                    compile for 32bit
    -fno-stack-protector    disable ProPolice
    -Wl,-z,norelro          disable relro

  In addition, the execstack tool can be used to flag the stack as
  executable on ELF binaries.

  Finally, network-access is limited for most levels by a local
  firewall.

--[ Tools ]--

 For your convenience we have installed a few useful tools which you can find
 in the following locations:

    * gef (https://github.com/hugsy/gef) in /opt/gef/
    * pwndbg (https://github.com/pwndbg/pwndbg) in /opt/pwndbg/
    * peda (https://github.com/longld/peda.git) in /opt/peda/
    * gdbinit (https://github.com/gdbinit/Gdbinit) in /opt/gdbinit/
    * pwntools (https://github.com/Gallopsled/pwntools)
    * radare2 (http://www.radare.org/)

 Both python2 and python3 are installed.

--[ More information ]--

  For more information regarding individual wargames, visit
  http://www.overthewire.org/wargames/

  For support, questions or comments, contact us on discord or IRC.

  Enjoy your stay!

bandit7@bandit:~$ ls -la
total 4108
drwxr-xr-x  2 root    root       4096 Feb 21 22:03 .
drwxr-xr-x 70 root    root       4096 Feb 21 22:04 ..
-rw-r--r--  1 root    root        220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root    root       3771 Jan  6  2022 .bashrc
-rw-r-----  1 bandit8 bandit7 4184396 Feb 21 22:03 data.txt
-rw-r--r--  1 root    root        807 Jan  6  2022 .profile
bandit7@bandit:~$ grep "million" data.txt
multimillionaires       UURj7MIL1MFzHOH81FmD78CHk0MkWPzY
millionth       TESKZC0XvTetK0S9xNwm25STk5iWrBvP
million's       xKy3GrEjEtddZSAoVB5baQNfpwugIy5N
millions        sBRp6cu4Mc1oN3dZTJRkdmL6v4NbbJI2
millionaire's   O9ZcsxJTfNc2ghFddOkGJuuPbCiLdSV8
million HBpmJAaKZRzNQzgyWo5IqzT3QMShzQP4
millionaire     MZiQH4tMTKJQ1fC9pxWsLJXRluaX21t8
multimillionaire        W8XFPwx9Wk1synHoDEJJgb4VoO1lkdSB
millionaires    8811d0IRBO5WSFbzLZWQXAtvaxqVaWXO
multimillionaire's      8Mdsan4hxS6wbG1aNmO4KPLdPZGX5ewb
bandit7@bandit:~$ grep "millionth" data.txt
millionth       TESKZC0XvTetK0S9xNwm25STk5iWrBvP
timed out waiting for input: auto-logout
Connection to bandit.labs.overthewire.org closed.
gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ 

Level 8

gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit8@bandit.labs.overthewire.org -p 2220
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit8@bandit.labs.overthewire.org's password: 

      ,----..            ,----,          .---.
     /   /   \         ,/   .`|         /. ./|
    /   .     :      ,`   .'  :     .--'.  ' ;
   .   /   ;.  \   ;    ;     /    /__./ \ : |
  .   ;   /  ` ; .'___,/    ,' .--'.  '   \' .
  ;   |  ; \ ; | |    :     | /___/ \ |    ' '
  |   :  | ; | ' ;    |.';  ; ;   \  \;      :
  .   |  ' ' ' : `----'  |  |  \   ;  `      |
  '   ;  \; /  |     '   :  ;   .   \    .\  ;
   \   \  ',  /      |   |  '    \   \   ' \ |
    ;   :    /       '   :  |     :   '  |--"
     \   \ .'        ;   |.'       \   \ ;
  www. `---` ver     '---' he       '---" ire.org


Welcome to OverTheWire!

If you find any problems, please report them to the #wargames channel on
discord or IRC.

--[ Playing the games ]--

  This machine might hold several wargames.
  If you are playing "somegame", then:

    * USERNAMES are somegame0, somegame1, ...
    * Most LEVELS are stored in /somegame/.
    * PASSWORDS for each level are stored in /etc/somegame_pass/.

  Write-access to homedirectories is disabled. It is advised to create a
  working directory with a hard-to-guess name in /tmp/.  You can use the
  command "mktemp -d" in order to generate a random and hard to guess
  directory in /tmp/.  Read-access to both /tmp/ is disabled and to /proc
  restricted so that users cannot snoop on eachother. Files and directories
  with easily guessable or short names will be periodically deleted! The /tmp
  directory is regularly wiped.
  Please play nice:

    * don't leave orphan processes running
    * don't leave exploit-files laying around
    * don't annoy other players
    * don't post passwords or spoilers
    * again, DONT POST SPOILERS!
      This includes writeups of your solution on your blog or website!

--[ Tips ]--

  This machine has a 64bit processor and many security-features enabled
  by default, although ASLR has been switched off.  The following
  compiler flags might be interesting:

    -m32                    compile for 32bit
    -fno-stack-protector    disable ProPolice
    -Wl,-z,norelro          disable relro

  In addition, the execstack tool can be used to flag the stack as
  executable on ELF binaries.

  Finally, network-access is limited for most levels by a local
  firewall.

--[ Tools ]--

 For your convenience we have installed a few useful tools which you can find
 in the following locations:

    * gef (https://github.com/hugsy/gef) in /opt/gef/
    * pwndbg (https://github.com/pwndbg/pwndbg) in /opt/pwndbg/
    * peda (https://github.com/longld/peda.git) in /opt/peda/
    * gdbinit (https://github.com/gdbinit/Gdbinit) in /opt/gdbinit/
    * pwntools (https://github.com/Gallopsled/pwntools)
    * radare2 (http://www.radare.org/)

 Both python2 and python3 are installed.

--[ More information ]--

  For more information regarding individual wargames, visit
  http://www.overthewire.org/wargames/

  For support, questions or comments, contact us on discord or IRC.

  Enjoy your stay!

bandit8@bandit:~$ sort data.txt | uniq -c
     10 06JGEzd0h7SG9ezN0TNJ4HiObh9NFrjA
     10 11f8uKsc6DxBivROEF8Uifg1mMKD6usK
     10 26nn1hqu3aiBMnRrS0BHAVsNmT0NWOYL
     10 2Kwg7gB03cpPvMklMtGz9OjfSkOF82tW
     10 2PKvVpiRjaQl1KgbufZZqmlbyQeS7Agx
     10 2QIjuO3vCFLMh13odiJQrsCNZGEABZXw
     10 4sWrxitgfTBHOwCJiIj6U4rg2ECXHYRS
     10 561YxdjbX7c4RbDFOHakBw3WXHmS24Fo
     10 6TjXMfO9hKD1KEDWhuEv8py50uDcOcHX
     10 6u9Fi7uePO03uHK7hg9SmIc6N9BaGAP5
     10 8cxHNGSfzmAu3VgEYDqhvT5uK41lmKzx
     10 8hVcGMxXdXx7TLiCEdyjTz0EHIgE8KKo
     10 9mKpFBTtqubE1weL8e7y3tL246o50HwM
     10 aczsZ9WiBvkYipXzLfWZihRAFLyHMc4B
     10 arg9njAuTC2YJS8eQhyh5R5rKtzfWZk9
     10 BDolwDj7aSGUtpujlBz0yUDkZpHjyWVx
     10 bETORKDdwqB0nIDPOzofSrR4cjU7Gb6A
     10 bLEM37He5xci6Atv9J3bpy0mqETDuojb
     10 BqntoCPmglE1lxSuqPSlPwR04hboJ6ZB
     10 BzLcaClDua0vjqkefN804IT3KrL4J2JM
     10 c28TKRJK0j0t4MN2vWroC0G2xJZA0ve0
     10 CH0Uyfcfeh17juocWZB3BlpasSgpGklw
     10 CJ5MIMjE3CPH8pRuVEzBEDVDwbgo97Te
     10 cuLPNnD5IFDCpa75Knn435L5U9QtrRYB
     10 cxWxPOhVdB343H7qCgkZGxNjzYe5a2cA
     10 D0LEfLi09wauOVgj3aR0i9mkaiSipmWO
     10 dCcgdZ8gcIJOcbBaYwuHyjXizQ79blAH
     10 DdWpWk3ho4wwIEx8itWeJgjsZkIT0rXd
     10 dIhFubIpy9F3JTAwK4IqPwR8u22dzjoW
     10 dnxV3M3wD6nMgyiV0nZd43hZA03kdzCF
     10 DSO6pt1TEcEAA1YAbEWGmPaNpBh4U150
     10 dyrYTJBkpSjM7n9LBDieLKkKUKyYbAv4
     10 eBKPZRC1gjlhxk8rJG74VO9COkjlT1ku
     10 EcfHHZC2lii77WkS8gSmP3XOfwKDKWOu
     10 edtmrr5E625cRyr6IBVjGpffZcuoX2pa
     10 eG7EVdwgODij9iGlhUpn4LovZxpNcEfz
     10 eiI4YqWjOEej0dYPvJFk5HR0wdVZQbJv
      1 EN632PlfYiZbn3PhVK3XOGSlNInNE00t
     10 eqQvViWw3MSA8eHfMlTpk2Cw23TGv9X5
     10 EWZ628DX9rcRZYhn9MMAfoEdhNbsNmHM
     10 fDhng49SRsZkYAY0UeNMJeobKD2Gf09A
     10 FQPyGPQm2zXOWnSp3X1nzBKCFCd4k1RD
     10 GItRZLD6wS4gv8MC94TEvfRJQyYbAxlH
     10 GJmEJ44IFhOPvDJEZubGjzJ3AugnY5sv
     10 GpzIqKN9zKuZwUyvUUsQuXfhUK4noSKq
     10 HfWPG1alL40Wq2VChJFBEzGI56MtUkbd
     10 HjFX3MFx2ey0GK1ZRWlnszDzQGev2pUk
     10 hjKUSeBj9dFv8v74bPpfwORwgSwtW7oy
     10 hmN8i67SREje5GYh8fI7YK4oDhZy5FYk
     10 htmLmV0Tb2XRKAWz3zUGnpH0GA5TNg3k
     10 ifFcvQY6WIt8JNpnaPyZnR7ReOcXk00B
     10 IlALlIJtx7Qr9sc5kJ0fdyQBooTnh1Vp
     10 IMZU0ypIdg6420BIV3ZIBfpZCnYtd8Kn
     10 Iuq9h4UdmnjVBZYsUfYDXUtUDket7M0l
     10 J317c3fpfGekYt9c7uyo7955ZGld5LSA
     10 J428ON1kKGRMeab3blwxLvtPsjZ8KWn1
     10 J9tdM29PkD1nOC0H6IBGuvXQNUwUOXRc
     10 jiLAaTqDGiVYmRQxnApQ1VaIpkYWDW13
     10 JXuvykTEv7XU0XFt2OUHerW5XqE8nnW8
     10 JySq1HVtiKPIbNxZUbQJo2Bb3yYi2p7r
     10 KrSCnSq2OSZZdh9YKvcCwKSr9nAEHyxe
     10 Ktym4EvRPzJfnbNJnYElCikcrOy48rnv
     10 KYmkPAhz6fjdV43xXuZ29VbrpM2JRHlR
     10 Ll55H9FywZGcWatjCwu1tPPJHsGCd5zZ
     10 M7RUP88YfANkyzyMfz2OR8bCA2luxMRq
     10 NiIPwHiNDfv4DXcMKnNj3EwNjE7Hn8wI
     10 njMAApk8ENmUGFPKa0WBBlxuf9pCxWlS
     10 nKND9q2JQiE3X3AZxw4Wgy890yw0w6fi
     10 NrJ1J23dDjwfwiBKfDR07PL8BnCYvZjd
     10 NvSmmtWqCuaN8EC43ly2zsnEhYsD2nCS
     10 ornJjDV9pTbDLiomj1VHljLn8eS7Y5Rb
     10 Q4eQI6pQ7I8fBrqTY1jzn57Nzc40H6e7
     10 QEJLfzEHkSwqpVx4INKHjDqwX69q7m9T
     10 qMva35CPHE5TPNI5cVotk8beYpsoZ9u1
     10 RGJSZZnxZ8iMIxDWyEPicYhd0jysQfo7
     10 sj7SdGhsLArAQBa1rCgtuwSQfbQhpjY7
     10 SMgqp8ckBr5AA16ZdzuXLGhTwiKl7Z4z
     10 sYq9gyHkHu0WQJLAvx4d2f6lVkeVlhhH
     10 tLTLXG7fKuZqK5HxX2j5X6MbLKCJneG3
     10 TNivxqvFn7mIfQh3cTALiTwEBgIDmArp
     10 TNOVVwf7c7pnEAkePEZDxg6gMqGKv87r
     10 TRyV1dAmX3FFNEHsYFSe1lN9awHib3H7
     10 UeXbPMhrZV8lBNsgq7hJH2QCSn705c5h
     10 ufAaGHA1KQjnoX6CfhHAs3ehE1L2YhbW
     10 uiXRfVfGWT0rDCGvxzn6I0legURU8AVH
     10 v656hM1wdp1ux2Fp1qsQl5OIjMqfkzOj
     10 VDtzb3eogjI2gcXYdAzZn2dlMYSRcz2Z
     10 vFGqJHMFuFOE70HhGPn2SPdMFwUO8mlw
     10 VOJsWdCSJsbn7qECdalZRlbnCSggSVj0
     10 vq9BG5B51B5MsJngGrNYXpFBhSZ0I812
     10 VT6jUoMjlvGpwJNQLXWC9xZ1L11QBmDW
     10 w5hxsBJ2MR2JNEg0Wy0P0VgzW3wFEJcj
     10 w79GSUD0VhcWKZFQV7uYKZ0PN7llbZeE
     10 WLpM0B7Q1q7aH4sYX39y9v65sQuwTGs7
     10 wW4HYSbHH2VhlLv3se3CR0NWvHIr0PRt
     10 xfWrsusPvlCSuIf3WPWq6U3GdF0wVnhs
     10 xJW2J0k4wAGJ3sLFrlLftqdiO8mYiKmV
     10 xKyghBoCgFjkbVjiXYoZfJThoYDdMQvc
     10 XWp1OYG9N05Vl46BAWfzIos6jRTv8TPX
     10 YZilmzls9OL4JEGomJczc526LpdA9tnC
     10 ZbUNTLfx4tNjefeEp8pSv9e4OGOPvk1H
bandit8@bandit:~$ 

Level 9

gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit9@bandit.labs.overthewire.org -p 2220
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit9@bandit.labs.overthewire.org's password: 

      ,----..            ,----,          .---.
     /   /   \         ,/   .`|         /. ./|
    /   .     :      ,`   .'  :     .--'.  ' ;
   .   /   ;.  \   ;    ;     /    /__./ \ : |
  .   ;   /  ` ; .'___,/    ,' .--'.  '   \' .
  ;   |  ; \ ; | |    :     | /___/ \ |    ' '
  |   :  | ; | ' ;    |.';  ; ;   \  \;      :
  .   |  ' ' ' : `----'  |  |  \   ;  `      |
  '   ;  \; /  |     '   :  ;   .   \    .\  ;
   \   \  ',  /      |   |  '    \   \   ' \ |
    ;   :    /       '   :  |     :   '  |--"
     \   \ .'        ;   |.'       \   \ ;
  www. `---` ver     '---' he       '---" ire.org


Welcome to OverTheWire!

If you find any problems, please report them to the #wargames channel on
discord or IRC.

--[ Playing the games ]--

  This machine might hold several wargames.
  If you are playing "somegame", then:

    * USERNAMES are somegame0, somegame1, ...
    * Most LEVELS are stored in /somegame/.
    * PASSWORDS for each level are stored in /etc/somegame_pass/.

  Write-access to homedirectories is disabled. It is advised to create a
  working directory with a hard-to-guess name in /tmp/.  You can use the
  command "mktemp -d" in order to generate a random and hard to guess
  directory in /tmp/.  Read-access to both /tmp/ is disabled and to /proc
  restricted so that users cannot snoop on eachother. Files and directories
  with easily guessable or short names will be periodically deleted! The /tmp
  directory is regularly wiped.
  Please play nice:

    * don't leave orphan processes running
    * don't leave exploit-files laying around
    * don't annoy other players
    * don't post passwords or spoilers
    * again, DONT POST SPOILERS!
      This includes writeups of your solution on your blog or website!

--[ Tips ]--

  This machine has a 64bit processor and many security-features enabled
  by default, although ASLR has been switched off.  The following
  compiler flags might be interesting:

    -m32                    compile for 32bit
    -fno-stack-protector    disable ProPolice
    -Wl,-z,norelro          disable relro

  In addition, the execstack tool can be used to flag the stack as
  executable on ELF binaries.

  Finally, network-access is limited for most levels by a local
  firewall.

--[ Tools ]--

 For your convenience we have installed a few useful tools which you can find
 in the following locations:

    * gef (https://github.com/hugsy/gef) in /opt/gef/
    * pwndbg (https://github.com/pwndbg/pwndbg) in /opt/pwndbg/
    * peda (https://github.com/longld/peda.git) in /opt/peda/
    * gdbinit (https://github.com/gdbinit/Gdbinit) in /opt/gdbinit/
    * pwntools (https://github.com/Gallopsled/pwntools)
    * radare2 (http://www.radare.org/)

 Both python2 and python3 are installed.

--[ More information ]--

  For more information regarding individual wargames, visit
  http://www.overthewire.org/wargames/

  For support, questions or comments, contact us on discord or IRC.

  Enjoy your stay!

bandit9@bandit:~$ ls -la
total 40
drwxr-xr-x  2 root     root     4096 Feb 21 22:02 .
drwxr-xr-x 70 root     root     4096 Feb 21 22:04 ..
-rw-r--r--  1 root     root      220 Jan  6  2022 .bash_logout
-rw-r--r--  1 root     root     3771 Jan  6  2022 .bashrc
-rw-r-----  1 bandit10 bandit9 19379 Feb 21 22:02 data.txt
-rw-r--r--  1 root     root      807 Jan  6  2022 .profile
bandit9@bandit:~$ strings data.txt | grep "=="
f========== theM
========== password
========== is
========== G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s
bandit9@bandit:~$ 

Level 10

gitpod /workspace/nedim-custovic-devops-mentorship (week-2-bandit-labs) $ ssh bandit10@bandit.labs.overthewire.org -p 2220
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit10@bandit.labs.overthewire.org's password: 

      ,----..            ,----,          .---.
     /   /   \         ,/   .`|         /. ./|
    /   .     :      ,`   .'  :     .--'.  ' ;
   .   /   ;.  \   ;    ;     /    /__./ \ : |
  .   ;   /  ` ; .'___,/    ,' .--'.  '   \' .
  ;   |  ; \ ; | |    :     | /___/ \ |    ' '
  |   :  | ; | ' ;    |.';  ; ;   \  \;      :
  .   |  ' ' ' : `----'  |  |  \   ;  `      |
  '   ;  \; /  |     '   :  ;   .   \    .\  ;
   \   \  ',  /      |   |  '    \   \   ' \ |
    ;   :    /       '   :  |     :   '  |--"
     \   \ .'        ;   |.'       \   \ ;
  www. `---` ver     '---' he       '---" ire.org


Welcome to OverTheWire!

If you find any problems, please report them to the #wargames channel on
discord or IRC.

--[ Playing the games ]--

  This machine might hold several wargames.
  If you are playing "somegame", then:

    * USERNAMES are somegame0, somegame1, ...
    * Most LEVELS are stored in /somegame/.
    * PASSWORDS for each level are stored in /etc/somegame_pass/.

  Write-access to homedirectories is disabled. It is advised to create a
  working directory with a hard-to-guess name in /tmp/.  You can use the
  command "mktemp -d" in order to generate a random and hard to guess
  directory in /tmp/.  Read-access to both /tmp/ is disabled and to /proc
  restricted so that users cannot snoop on eachother. Files and directories
  with easily guessable or short names will be periodically deleted! The /tmp
  directory is regularly wiped.
  Please play nice:

    * don't leave orphan processes running
    * don't leave exploit-files laying around
    * don't annoy other players
    * don't post passwords or spoilers
    * again, DONT POST SPOILERS!
      This includes writeups of your solution on your blog or website!

--[ Tips ]--

  This machine has a 64bit processor and many security-features enabled
  by default, although ASLR has been switched off.  The following
  compiler flags might be interesting:

    -m32                    compile for 32bit
    -fno-stack-protector    disable ProPolice
    -Wl,-z,norelro          disable relro

  In addition, the execstack tool can be used to flag the stack as
  executable on ELF binaries.

  Finally, network-access is limited for most levels by a local
  firewall.

--[ Tools ]--

 For your convenience we have installed a few useful tools which you can find
 in the following locations:

    * gef (https://github.com/hugsy/gef) in /opt/gef/
    * pwndbg (https://github.com/pwndbg/pwndbg) in /opt/pwndbg/
    * peda (https://github.com/longld/peda.git) in /opt/peda/
    * gdbinit (https://github.com/gdbinit/Gdbinit) in /opt/gdbinit/
    * pwntools (https://github.com/Gallopsled/pwntools)
    * radare2 (http://www.radare.org/)

 Both python2 and python3 are installed.

--[ More information ]--

  For more information regarding individual wargames, visit
  http://www.overthewire.org/wargames/

  For support, questions or comments, contact us on discord or IRC.

  Enjoy your stay!

bandit10@bandit:~$ 




Screenshoots

![Alt text](Screenshots/Screenshot%20(2).png)

