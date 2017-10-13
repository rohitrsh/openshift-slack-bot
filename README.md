# hubot-openshift-slack-bot

**OpenShift Slack Bot - intracts with openshift cli and posts results on Slack**
!oc help - will  reveal all the commands

![ocget](https://user-images.githubusercontent.com/17526588/31546246-14d4199c-b040-11e7-99d9-3c0bf545b37e.gif)


## Installation

1. In hubot project repo, run:

   `npm install hubot-openshift-slack-bot --save`

2. Install and copy oc cli into `/usr/bin`

3. Then add **hubot-openshift-slack-bot** to your `external-scripts.json`:

   ```json
      [
        "hubot-openshift-slack-bot"
      ]
    ```
4. Start hubot and export `KUBECONFIG` variable pointing to your `admin.kubeconfig` file.

5. Type `!oc help` to get all the available commands

## NPM Module

https://www.npmjs.com/package/hubot-openshift-slack-bot
