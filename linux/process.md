# Linux Process

https://medium.com/@chetaniam/a-brief-guide-to-priority-and-nice-values-in-the-linux-ecosystem-fb39e49815e0

https://www.redhat.com/sysadmin/manipulate-process-priority

---

always review the details with `man <command>`

#### strace

trace system calls and signals

#### lsof

       lsof - list open files
        sudo lsof /dev/nvidia*

#### bg

Resume each suspended job jobspec in the background, as if it had been started with &.

#### fg

Resume jobspec in the foreground, and make it the current job.

#### ps

-   pidwait

-   psgrep

-   pskill

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

# Memory

#### vmstat

Report virtual memory statistics

### OOM

The Linux Out of Memory (OOM) Killer is a mechanism employed by the Linux kernel to prevent system-wide memory exhaustion and maintain system stability when available memory is critically low

### Memory Leak

Key Points:

    Causes:
        Programs that do not free up memory allocated for temporary use.
        Incorrect memory management in programming languages like C/C++.
        Failure to deallocate memory when it is no longer needed

    .

Symptoms:

    Gradual increase in memory usage.
    Performance degradation over time.
    Program crashes or system freezes due to lack of available memory

    .

Types of Memory Leaks:

    User-land Applications: Short-lived applications may not cause noticeable issues, as modern operating systems reclaim memory after termination. Long-lived applications can waste memory over time, leading to system instability

.
Kernel-land Processes: Memory leaks in kernel processes can lead to serious system stability issues, as kernel memory is limited

    .

Detection and Diagnosis:

    Tools like Valgrind, gperftools, and Massif can help analyze memory allocation and deallocation patterns.
    System monitors like top and free commands can be used to monitor memory usage over time
