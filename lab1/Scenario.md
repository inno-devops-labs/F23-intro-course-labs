# Scenario: Mobile Game Debacle

### Background
Let's say we have a small software development company, that's creating a mobile game, The game is about a dinosaur navigating a series of obstacles to collect coins (like in google chrome when there is no internet connection). As the launch date approached, the team found that they had multiple unresolved bugs, a massive backlog of features, and that every time they tried to fix something, two more issues appeared. The marketing team was promising new features in advertisements that the developers hadn't even heard of, and when a beta version was released to a group of testers, feedback was start gathered in but had nowhere structured to go.


### Challenges

1.  The development and operations teams were working in isolation, causing inefficiencies and miscommunication.
2.  New bugs kept showing up during the testing phase, slowing down the release.
3.  Critical user feedback from the beta testers was being lost or not used effectively to improve the game.

### Potential Benefits of Applying DevOps Principles

1.  Faster and more efficient deployment of new features and bug fixes.
2.  Improved communication between teams.
3.  Enhanced game quality and user experience.

### DevOps Practices to Address Challenges

#### 1. Agile Project Management:
-   **Application**: By implementing an agile approach, the company can ensure better communication between teams. They can break down the game development into smaller tasks, prioritize them based on feedback, and work on them in sprints. This way, marketing knows exactly what's being worked on, and developers are clear about what they should focus on.
-   **Desired Outcomes**: Make plans clear, organize tasks, and have the team on the same pages. Features that the users really care about are released faster.
-   **Example**: Instead of promising random features in advertisements, the marketing team can consult the current sprint tasks and promote upcoming, confirmed game additions.

#### 2. Shift Left with CI/CD:

-   **Application**: Instead of letting bugs accumulate, developers can integrate Continuous Integration and Continuous Deployment. This means as soon as a new piece of code is written, it's tested. If bugs appear, they are addressed immediately, ensuring that the main code remains working and stable.
-   **Desired Outcomes**: Faster bug detection and resolution, Simpler development process, and reduced bugs to show up later.
-   **Example**: When a developer adds a new feature like obstacle to overcome in the game, CI/CD ensures it doesn’t cause the game to crash or conflict with other elements.

#### 3. Gather Continuous Feedback:

-   **Application**: By preparing a system to gather and analyze feedback from beta testers, the team can prioritize fixes and feature additions based on actual user experience.
-   **Desired Outcomes**: A game that meets user expectations, fewer negative reviews, and a clearer understanding of the user's needs.
-   **Example**: If beta testers consistently report that they love a particular phase but wish it lasted longer, developers can add such feature, making the game more enjoyable.


#### 4. Monitor the DevOps Pipeline and Applications:

-   **Application**: Introduce tools to monitor the entire development pipeline, from code commits to deployment, ensuring any failure are immediately reported.
-   **Desired Outcomes**: Minimize release times and ensure consistency throughout the development process.
-   **Example**: If a certain code  change slows down the game's performance, monitoring tools can alert the developers, allowing them to address the issue before it reaches the end-users.
