class ExampleMailer < ActionMailer::Base
  default from: "from@example.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end

  def account_activation(user)
    @user = user
    mail to: @user.email, subject: "Account activation"
  end

  def happy_new_year
    mail to: "haivovan.bkit11@gmail.com", subject: "Happy new year"
  end
end
