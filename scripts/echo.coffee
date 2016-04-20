HubotCron = require 'hubot-cronjob'

module.exports = (robot) ->
  # monday to friday, 11am
  pattern = '0 11 * * 1-5'
  timezone = 'Asia/Tokyo'
  fn = () ->
    robot.messageRoom "general", "echo"
  new HubotCron pattern, timezone, fn
