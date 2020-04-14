###  Install the header using the script :

```bash
git clone https://github.com/ggjulio/42_emacs.git
cd 42
./set_header.sh marvin marvin@42.fr
```

### Manual install :
1) Copy all files in folder ~/.emacs.d

2) Change user-login and user-email var in file "header.el"   
   -> optional :    
      	  1/ Creating an env variable. In ~/.zshrc or ~/bashrc add the folowing command :   
            export MAIL="yourlogin@student.42.fr"  
	  2/ And run source ~/.zshrc or source ~/.bashrc to reload the source file
   	  
3) Header shortcut (C - C H) is now functional.
