require 'test_helper'

class QuoteMailTest < ActionMailer::TestCase
  test "quote" do
    mail = QuoteMail.quote
    assert_equal "Quote", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
