# Docker container for the Coffee-Cart testing

## Table of contents

- [Description](#description)
- [Preparation](#preparation)
- [Main Task](#main-task)
- [Task Reporting](#task-reporting)

## Description

In this task, you will practice creating Dockerfile and running the tests from Docker Container. 

## Preparation
[text](../qa_pw_coffee_cart_docker/env/.env.staging)
1. Open the forked repo in VSCode.
2. Create a new branch by running git checkout -b task_solution.
3. Run the installation commands:

    - `npm ci`
    - `npx playwright install`

## Main Task

1. Create the `Dockerfile` in the root project directory (use example from the theory):
- Use the `node:22-slim` image as a base image.
- Set the working directory to the project root `WORKDIR /`.
- Copy the package.json & package-lock.json files.
- Install the dependencies with `npm ci`.
- Install the playwright chromium browser with dependencies
- Copy the project content.
- Add the command for the tests execution `npx playwright test`. 
2. Create the `.dockerignore` file to ignore the files that are not needed within the image.
3. Build the image with command `docker build -t coffee-cart:<playwright_version> .`
4. Make a screenshot of the console output for the successfull build.
5. Run the command `docker image list` and make the screenshot.
6. Run the tests in the container with the command `docker run coffee-cart:<playwright_version>`.
7. Make a screenshot of the console output for the successfull execution.
8. Add all three screenshots to the pull-request description.


## Task Reporting

1. Add and commit all your updates.
2. Push the code to the origin.
3. Create a PR for your changes.
4. Keep implementing suggestions from code review until your PR is approved.
