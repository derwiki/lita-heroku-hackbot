# Deploying to Heroku

1. `git clone git@github.com:derwiki/lita-heroku-hackbot.git`
1. `heroku create $myname-lita`
1. `git push heroku master`
1. `heroku addons:create heroku-redis`
1. https://slack.com/services/new/bot and plug token into...
1. `heroku config:set SLACK_TOKEN=$token`
