`Sorry for files from the first lab being in that branch. I messed up with the first lab
and now it is in all other branches.`

# Verson control systems

A system called version control keeps track of and controls changes
made to files over time, facilitating productive collaboration between
many participants on a single project.

## Benefits for collaborative environment:

1. Streamline merging and branching. Team members are able to work on different
streams of change simultaneously and then merge them together.
2. Access every file’s modification history. It helps to study roots of faults because
you can inspect changes made by several peoples in the past.
3. Create regular, automated backups. We can protect data via backups, stored
on various workstations.

## Types of VCS

1. Local VCS. All data stored on your local computer. Changes are stored as a patches,
which are sets of changes made to the file since its last version. The main problem is
single point of failure problem. If version becomes corrupted, all patches will be useless.
2. Centralized VCS. All file versions are stored on single server. That allows
for easy collaboration with other developers from the team. However, problems are the same as
in local VCS case: if server is down, no one can pull/push code.
3. Distributed VCS. In that case each developer has local copy of the whole project,
including its complete history. That eliminates SPOF problem and makes project more robust
to serverside failures.

## Comparison of popular VCS

Git is the most widely used VCS. It is famous because of its speed and flexibility.
Also, it belongs to a distributed VCS type. Mercurial, another popular VCS also
belongs to this class. It is focused on ease of use. On the other hand, Subversions
VCS based on centralized approach: commits from the users are sent back to
the central repository. All of them are basically open-source and free to use.
