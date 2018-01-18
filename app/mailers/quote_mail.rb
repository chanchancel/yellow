class QuoteMail < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.quote_mail.quote.subject
  #
  def quote client
  	@client = client
    @greeting = "Hi"

    mail to: @client.email, subject: 'Freight Quotation Request'
  end
end
