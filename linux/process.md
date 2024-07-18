# Linux Process

https://medium.com/@chetaniam/a-brief-guide-to-priority-and-nice-values-in-the-linux-ecosystem-fb39e49815e0

https://www.redhat.com/sysadmin/manipulate-process-priority

---

always review the details with `man <command>`

#### bg

Resume each suspended job jobspec in the background, as if it had been started with &.

#### fg

Resume jobspec in the foreground, and make it the current job.

#### ps

#### htop / top

monitor procesesses

https://codeahoy.com/2017/01/20/hhtop-explained-visually/

---

#### renice

alter priority of running processes

`#renice -n 1 999` where 1 is the number priority and 999 the PID.

The -20 is the higher priority and 20 is the lowest priority

#### nice

run a program with modified scheduling priority

`$ nice -n 19 sleep 999 &`

The niceness value ranges from -20 (highest priority) to 19 (lowest priority), with the default being 0.

#### vmstat

Report virtual memory statistics
