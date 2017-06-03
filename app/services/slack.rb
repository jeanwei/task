require 'rest-client'
require 'json'

class Slack
  def self.to_channel(channel, message)
    RestClient.post(
        'https://hooks.slack.com/services/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',
    { payload: {
              channel: "#{channel}",
              username: "messenger",
              callback_id: "",
              attachments: [
                  {
                      fallback: "#{message}",
                      color: "#36a64f",
                      title: "#{message}",
                      text: "#{message}",
                  }],
              }.to_json
            }
    )
  end

  def self.from_channel()
    # https://slack.com/api/METHOD

  end
end