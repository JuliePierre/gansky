class UserApplicationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_application_mailer.new_application.subject
  #
  def new_application(user_application)
    @user = user_application

    mail(to: "julie.pierre3@gmail.com", subject: 'Vous avez une nouvelle demande de dossier', skip_premailer: true)
  end
end
