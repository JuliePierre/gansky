class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation.subject
  #
  def confirmation(user_application)
    @user = user_application
    @greeting = "Hi"

    mail(to: @user.applicant_email, subject: 'Welcome to Le Wagon')
  end
end
