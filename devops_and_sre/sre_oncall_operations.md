## ITIL methodology

https://www.vivantio.com/blog/basic-understanding-of-itil/

## Incident management

https://sre.google/sre-book/managing-incidents/

Live Incident State Document - LISD
https://sre.google/sre-book/managing-incidents#live-incident-state-document

### Incident Management Guide

https://sre.google/resources/practices-and-processes/incident-management-guide/

### Incident Response

https://sre.google/workbook/incident-response/

### Handoff

https://sre.google/sre-book/managing-incidents/#clear-live-handoff

### Glossary

#### RCA (Root Cause Analysis):

Objective: Identify the root cause of a problem or failure.
Focus: Breaks down an issue into its most fundamental components to determine the main cause.
When to use: Typically applied after a significant failure or incident that requires a definitive solution to prevent recurrence.
Methodology: Uses techniques like the 5 Whys, Ishikawa Diagrams (fishbone diagram), data analysis, etc.
Outcome: A plan of action focused on eliminating the root cause to prevent future occurrences of similar problems.

#### Post Mortem:

Objective: Broadly review what went well and what didn’t in an event or project.
Focus: A retrospective analysis covering both the positive and negative aspects of a project or event.
When to use: After the conclusion of an event, project, or major phase. It evaluates overall performance, regardless of success or failure.
Methodology: Collaborative review among all stakeholders to openly discuss outcomes.
Outcome: A document summarizing lessons learned and recommendations for improving future projects.

#### PIR (Post Incident / Implementation Review):

Objective: Evaluate the success of a project implementation in terms of meeting objectives and performance.
Focus: Assesses whether the expected benefits were achieved, if the project met the requirements, and if the implemented solutions are sustainable and effective.
When to use: After the implementation phase of a project (not necessarily the entire project) to assess if the change or improvement had the intended impact.
Methodology: Comparison of actual results against predefined project objectives, performance metrics analysis.
Outcome: A report detailing whether the implementation was successful, if the expected benefits were achieved, and any further improvements needed.

#### Key Differences:

RCA is focused on finding the root cause of a specific issue or incident.
Post Mortem is a comprehensive evaluation of the entire project or event, covering both successes and failures.
PIR specifically reviews the implementation phase of a project to determine if the expected outcomes were achieved.
Each process is useful in different contexts and stages of project or event management.

### Live Incident State Template

https://sre.google/sre-book/incident-document/

```markdown
# 2024-10-17-PLATFORM-SERVICE-ISSUE

Title with <date --iso-8601 >

### STATUS

#### HANDOFF

Include when the incident is delegate to somebody else.
with the conclusion at the time.

### SUMMARY

Fill this section as you learn about the live incident.
Include timestamp.

### ROOT CAUSE

Fill this section at the end, describing the resolution.

### IMPACT

is 1 customer impacted ? or 10 ?

### SCOPE

is this impacting other systems ?

### TIMELINE

Real time with timestamp findings
...
questions, and conclusions ...
including screenshots and links.

### NEXT STEPS

short-term vs long-term

### INTERNAL RCA / PIR / POST MORTEM ?

### PUBLIC RCA / PIR / POST MORTEM ?

### EXTERNAL LINKS
```
