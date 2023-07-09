# Software distribution

> Software distribution defines how potential users can install/obtain/download
> the software product.

## Strategies

- **Package managers** - such as nix, pacman, apt, winget, homebrew, etc.
- **Pre-installed on the end-device** - obvious example is Windows OS that comes preinstalled on most laptops.
- **Disks or other hard-drive storages** - videogames for consoles.
- **Providing pre-compiled binaries from the website**
- **Source-code** - on, e.g. [GitHub](https://github.com), with building instructions.

## Best Practicies

- Use proper versioning - the most common one is [semantic versioning](https://semver.org/)
- Utilize different strategies - the more ways to get the software a user have, the more likely they will use it.
- Provide informative changelog between version updates.
- *Sometimes*, self-updating mechanism is good if you target non-tech audience - such as web-browsers, which must be up-to-date for as much users, as possible. The rest *should* be managed by package-managers.
- Make installation intuitive. If your software requires runtime dependencies - they should be installed automatically.
