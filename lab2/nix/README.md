# Nix ❄️

[Website](https://nixos.org/)

Package manager, build system and system configuration tool for reproducible and declarative systems.

## Purpose and benefits of the tool in the DevOps context

The main purpose of the Nix is to provide reproducible environments regardless of the machine. The main idea is simple - if it works on one machine it must work on any other, which is convinient in DevOps context, since setting up CI/CD requires no effort at all - just reuse the same configuration as on your machine. Of course, this isn't the only benefit.

## Key features and functionalities

- Unified package manager regardless of distro nor OS with over 80000+ packages **including** language specific ones - e.g. python libraries
- Reproducible builds - nix builds packages in isolation from each other. **if a package works on one machine, it will also work on another.*
- Declarative - makes it possible to share the whole programming environments regardless of the language or the tools.
- Reliable - installing or upgrading some package will not break other. Allows to roll back to the previous versions.

## Use cases and examples of how the tool is used in real-world scenarios

Two stories

- [Replit](#replit)
- [Channable](#channable)

### Replit

Article: [How we went from supporting 50 languages to all of them](https://blog.replit.com/nix)

**Summary**

> Nix has been integrated into the architecture of [Replit](https://replit.com/), a coding environment, enabling users to instantaneously access more than 80,000 OS packages. Before Replit, users could only utilize a limited number of OS packages and supported languages, which restricted their ability to install and use any language.

### Channable

Article: [Nix is the ultimate DevOps toolkit](https://www.channable.com/tech/nix-is-the-ultimate-devops-toolkit)

**Summary**

> By pinning the Nixpkgs version and enabling simple package overrides, Nix addresses the issue of updating single dependencies. With pkgs, runtime and development requirements are separated.BuildEnv allows for atomic installation and rapid rollbacks while avoiding manual installation steps using nix run. Large resource sharing between versions, eliminating rebuilds when switching branches, and sharing build outputs between machines and CI are all made possible by Nix. Finally, by making packages independent of the host OS, Nix solves the problem of breaking changes in system requirements.
