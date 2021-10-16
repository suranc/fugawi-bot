# fugawi-bot

This is a bot for The Fugawi Slack community.  It's a collection of useful functions and inside jokes. 

## To run locally

1.  Create a config file called "fugconfig" that exports your Slack bot's token.
    ```
    export HUBOT_SLACK_TOKEN="xoxb-..."
    ```
2.  Run `npm install`
3.  Run `./fugrun` to source your "fugconfig" configuration file, and (re)start your bot.


## Run in Heroku
To deploy on Heroku, follow these directions.

1. If you don't already have a Heroku account, [register for one here](https://signup.heroku.com)
2. After you've signed into your new account, [create a new app](https://dashboard.heroku.com/new-app).
3. Go to the `Deploy` tab and select GitHub as your deployment method
  - If you haven't connected to your Heroku account to GitHub, click `Connect to GitHub` (seen below)
  - Once connected, select your username, enter "universe-bot", and select `Connect`  ![connect-to-github](https://user-images.githubusercontent.com/11798972/28807953-e65a12fe-7635-11e7-9c8b-9892d45f33da.png)

4. In the `Manual Deploy` section, click `Deploy Branch`
5. Add your Hubot Slack Token to your Heroku app's environment variable
  - Get your Slack Token from the `.env` file in your Glitch app or directly from your Hubot configuration on Slack
  - Navigate to the `Settings` tab on your Heroku app
  - Select the `Reveal Config Vars` button
  - Type `HUBOT_SLACK_TOKEN` in the `KEY` field and your token into the `VALUE` field, then click `Add`
6. Open Slack to test your deployment
  - _Note: To test properly, make sure to close the Glitch browser._
