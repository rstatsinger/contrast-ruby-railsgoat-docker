RailsGoat - Demo App for Contrast Security's Instrumentation-Based AppSec platform for Ruby - Easy Setup using Docker
=========

This is an intentionally vulnerable Ruby web application. It includes vulnerabilities from the OWASP Top 10 and is intended to be used as an educational tool for developers and security professionals. Any maintainers are welcome to make pull requests.

This setup runs the application in a Docker container, isolating it from your environment.

## Prerequisites

A Contrast Security account, git, and docker (with docker compose)

## Instructions
1. git clone this repo
2. Drop your contrast_security.yaml file for the Ruby agent into the project root directory
3. Edit the yaml file so that the **agent** stanza looks like the below, and add the **assess** stanza as shown:

```
  agent: 
    logger:
      path: /tmp/contrastagent.log
      level: ERROR
    service: 
      logger: 
        path: /tmp/contrastservice.log
        level: ERROR
       host: 127.0.0.1
       port: 30555
   assess:
    enable: true
```

4. build.sh - this will take a long time the first time you build it
5. run.sh
6. Interact with the application at http://localhost:3000 and look for the **RubyOnRailsDocker** application in your Contrast account's UI

