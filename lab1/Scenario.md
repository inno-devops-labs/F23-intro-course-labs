# Scenario

---

## Project

> Mobile app with database server, communicating through python webserver API

## Scenario details

First, communication in team.
Meeting is conducting through Zoom every week
to make goal for new sprint and reflect on the last one.
It will help in communication inside team.

Second, automatization of testing new commits for webserver,
using [pytest and GitHub workflows](https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-python).
It will decrease time for pull requests reviews
because decrease number of test breaking code to review.

Third, gaining feedback from users.
For crashes and technical details, Firebase (for mobile),
monitoring resources in Yandex.Cloud (it will be used for deployment)
using metrics (for webserver).
For user feedback use mobile stores reviews
and feedback inside mobile app.
These feedback will help to decrease number of bugs and
decide to expand webserver resources.
