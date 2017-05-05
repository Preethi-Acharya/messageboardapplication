class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.update_notification.subject
  #
  def update_notification(message, recipient)
    @greeting = "Hi"
    @message = message

    mail to: recipient, subject: "Message Update Notifiation"
  end
end
