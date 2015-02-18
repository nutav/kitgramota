class AppMailer < ActionMailer::Base
  default from: 'mail@kit-gramota.ru'
  
  def claim_email(claim)
    @claim = claim
    mail(to: 'mail@kit-gramota.ru', subject: 'Новая заявка на курсы')
  end
end