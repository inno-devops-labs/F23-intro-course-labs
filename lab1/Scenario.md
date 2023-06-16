## Scenario

The year is 2005.

A business runs an online retail shop.
Over the years, it acquired a large userbase and operates
millions of dollars every day.

The problem is that every time the dev team encounters a new bug in the
existing system, it takes forever for their changes to reach production.
This is because, at every step of the development lifecycle, someone needs to
manually analyze existing code, run tests, and not mention that the code
itself is a mess, since everyone is using different code styles
(*remember,* there are no linters on the CI since there are no CI at all).
Moreover, after changes are *finally* ready to be applied, the service needs
to be held on maintenance, leading to great loss for the business.

And when the services needs to be migrated to the other server, things
become even worse. *Disaster!*

## Benefits of using DevOps

### Development loop (lifecycle) automation

1. Reduce the time between committing a change to a system and the change being placed into normal production
2. Make this process not only faster, but also more reliable and secure.
3. Enforce various style guides for developers without which the code won't pass some checks. The codebase becomes more consistent and maintainable.
4. Make the process *easier* for the developers itself, because most of the tasks are automated.
5. Use load-balanced & fail-proof systems (for example **Kubernetes**)

## Always seek improvements

Do not think that if the system *works* it doesn't need to be improved.
In this example, each improvement to the development lifecycle
will lead to more income for the business itself. The more stable the system is,
the more users will like it and rely on it.

## Being customer-centric

In this example this means collecting metrics of how customers interact
with the system. This would help to analyze the weak spots that needs to 
improved.
