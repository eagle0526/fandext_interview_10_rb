class CreateUserMailer < ApplicationMailer
  def create_user_mail(email)
    mail to: email, subject: 'Success Create User!'
  end
end
