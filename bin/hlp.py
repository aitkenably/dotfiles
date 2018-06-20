#!/usr/bin/env python3

sections = {

    "Text Manipulation" : {
        "f" : "folds a file to 8 columns in place",
        "v" : "alias for 'view'" 
    }, 

    "Git Commands" : {
        "gc" : "alias for 'git commit'",
        "gh" : "alias for 'git push origin master'",
        "gs" : "alias for 'git status'"
    },

    "Misc Commands" : {
        "hlp" : "prints this cheatsheet"       
    }   
}

# ANSI color codes
GREEN = "\033[0;32m"
CYAN = "\033[0;36m"
 
# Reset color
RC = "\033[0m"

print(f"\n  {GREEN}Custom Commands{RC}")

for title, commands in sections.items():
    print(f"\n    {CYAN}{title}{RC}\n")
    for command, description in commands.items():
        print(f"     {command:<12}  {description}") 

