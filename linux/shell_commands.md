#### Copy the target file vs the symlink recursively
``` cp -P ... ```

https://www.lostsaloon.com/technology/how-to-copy-symbolic-links-in-linux/


#### Redirect stdout to other tty ( terminal )
https://askubuntu.com/questions/484993/run-command-on-anothernew-terminal-window

    Open two terminals.
    Identifying each terminal with tty command.
    Supposing they identified with /dev/pts/0 and /dev/pts/1.
    In terminal pts/0 redirecting stdout to pts/1 with exec command: exec 1>/dev/pts/1
    Now every command stdout output from pts/0 terminal is displaying in pts/1.
    Redirecting back stdout with command: exec 1>/dev/pts/0
    Now pts/0 stdout working as before.

------

`type` to see if is command of builtin, shell function, alias, etc

#### where is the bin ?

* command -v vim
    show wich is execute in the current shell
    validate the type of execution, is that an alias ? is a binary and show the dir

which vim

* whereis vim
    search the package in the diff paths... show the diff paths for each package.
    ideal to validate the diff packages version of a package are installed and where.


put `\` before the command to execute Non alias
```
\dirma
\rm
```

Put a space before the command to avoid log it in the history.
