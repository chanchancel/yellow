# Preview all emails at http://localhost:3000/rails/mailers/quote_mail
class QuoteMailPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/quote_mail/quote
  def quote
    QuoteMail.quote
  end

end
