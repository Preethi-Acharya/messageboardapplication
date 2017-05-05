require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "update_notification" do
    mail = MessageMailer.update_notification
    assert_equal "Update notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
