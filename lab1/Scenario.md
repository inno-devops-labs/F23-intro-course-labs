## Lab 1 - Task 2 - Scenario for DevOps principles

### Act I
For example, we can have a web-site development. John the Backender used to compile the source code and run tests which he considered best manually. One day the management discovered that the purple button was not pressed too much and since there was no telling who was responsible for the color, they fired John as the least attractive.

After Jonh get fired, Mark looked at the repository and developed his own tests. Next day he observed the John's tests and decided to use part of them as well commenting out few lines as they dublicated his tests. Knowing the fate of John, Mark started to gather statistics from the web-site on UI usage. As he did not have any extensive knowledge of the whole system, he randomly put test access points around the web-site to alert his collegues about bad buttons. But one day frontend made changes of the company logo last minute and Mark was not in time to include those changes since the process of deployment is always "as first time" since there are no automated solutions.  

After Mark was fired, Pete looked at all tests and did not have time to understad the commented lines and uncommeted them and just started to run them all with handicapped script which disallowed to add any more tests easily. Pete used to be informally in charge of statistic gathering thus he had some laugh on the work Mark has done in vain. Fortunately, Pete did learn something from the DevOps course and he could file a proposal to the program architect.

### Act II

Pete wrote that current state of testing procedure is highly unstable since different people embbeded their own test logic nobody can understand. He proposed to include **Automatic tests** procedure after each build to avoid testing faults.

He also wrote that Mark and himself were both arranging monitoring procedures. He demanded to introduce a culture of **Constant comunications** within the team in order to exclude double work.

He remembered the John who was blamed for the the work he did not do, so the **Code ownership** paradigm could prevent such situation, Pete proposed.

Finally, he remebered how embarassed Mark was when the old logo appeared on the web-site. He developed the Docker **Continious development** pipeline for review to the architect.

### Act III

The software architect Andrew was so imprest by the letter that every change proposed was immediately introduced and the workflow became much more stable and less stressfull. But then Pete was fired since Andrew was afraid he would take his place.
