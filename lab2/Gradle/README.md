# Gradle

## Desctiption

Gradle
: is an open-source build automation tool for multi-language software development. Solution allowing automate the creation of application with an ability to compile, link and package the code. The tool supports groovy based Domain Specific Language over XML.

## Purpose and benefits in the DevOps context

1. This tool is well-known to be highly flexible when the project consists from various technologies such as Java projects, Android environments and Groovy projects.
2. With respect to [@Gradle](https://docs.gradle.org/current/userguide/what_is_gradle.html) gradle following following fundamentals:

- High performance (**Shared cache**)
  Gradle avoids conditional work depending on the variables states change having various caches to reuse outputs from previous builds.
- JVM foundation
  Gradle runs on the JVM making it easier to operate to the one who has experience with Java APIs.

## Key features and functionalities

With respect to [@Gradle](https://gradle.org/features/) it is possible to derive following list of key features and functionalities:

1. Performance

- Incremental Builds.
  Gradle verify the change of inputs, trigger changes only when difference between inputs has been observed, otherwise task is considered is up to date.
- Build Caching.
  In case if the a task was executed on another device, graddle can skip local execution and get the output from the build cache output.
- Compiler Daemon.
  Gradle provides a daemon process that is utilized in a multi-project build when you need to fork the compilation process. The compilation process speeds up dramatically as a result of this.
- Parallel Execution.
  Faster performance promoted trough parallel execution of tasks via Worker API.

2. Build Scans

- Web-based Build Visualiization.
- Colloborative Debugging.

3. Excecution Options

- Continuous Build.
  Regular observation for tasks's inputs changes and conditional rebuildining.
- Composite builds
  You may include additional independent projects in composite builds so that, for example, you can simultaneously create an application and the library it depends on. They can be nested and constructed in parallel by default.

4. Dependency Management

- Transitive Dependencies.
  Gradle manages transitive dependencies.
- File Based Dependency.
- 3rd Party Dependency Cache.
  It is possible to download dependencies from remote repositories and cahce locally.

## Use cases and examples

1. Gradle comonnly used for build and stest phases of projects. Same gradle builds are used to package, publish and deply the application.
2. As an automation framework. Beside the usage of graddle to call other scripts it also can be extended via external libraries, dependencies of which will be handled by gradle itself.
