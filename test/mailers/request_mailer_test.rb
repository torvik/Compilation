require 'test_helper'

class RequestMailerTest < ActionMailer::TestCase
  test "request" do
    mail = RequestMailer.request
    assert_equal "Request", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "thanks" do
    mail = RequestMailer.thanks
    assert_equal "Thanks", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
