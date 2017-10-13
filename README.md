
## OpenShift Slack Bot

This chat bot allows you to interact with existing OpenShift cluster though Slack.

Currently openshift-slack-bot allows you to get details of openshift cluster through chats in Slack. These chats can come from you and your teammates, or from any other app that you have integrated with Slack 


Note, this script utilizes the oc cli client, a wrapper for the `oc` command.

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


## Improvements
If you like any of these ideas and want to see them, or if you have any cool ideas of your own, let me know at rohitrsh@gmail.com - thanks!

Add more commands, it would be very cool to have a that mimic the behavior of the oc command


