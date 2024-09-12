#### Files

you can use the file command to determine if a file is in DOS or Unix format. The file command examines the contents of a file and provides information about its type.

```
file update.sh
```

#### print the access rights in octal

`stat -c "%a %n"`

#### SUID

SUID (Set User ID): When a file with SUID permission is executed, it runs with the permissions of the file owner (typically root), rather than the user who executed it. This allows regular users to perform tasks that normally require elevated privileges.

```
To set the SUID bit on a file, you can use the chmod command with the u+s option:
chmod u+s <filename>

Or, using the numerical mode:
chmod 4755 <filename>
```
