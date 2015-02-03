# Preview all emails at http://localhost:3000/rails/mailers/request_mailer
class RequestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/request_mailer/request
  def request
    RequestMailer.request
  end

  # Preview this email at http://localhost:3000/rails/mailers/request_mailer/thanks
  def thanks
    RequestMailer.thanks
  end

end
