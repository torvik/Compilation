class RequestMailer < ActionMailer::Base
  #default from: "from@example.com"

  def request_teste(request_mailer)
    @request_m = request_mailer

    #mail to: 'Admin Compilation <pless.victor@gmail.com>', from: 'pless.victor@gmail.com', subject: 'Compilation: Criação de Solicitação'
    mail to: @request_m.project.user.email, from: @request_m.user.email , subject: 'Compilation: Criação de Solicitação'

  end

  def thanks(request_mailer)
    @request_m = request_mailer

    mail to: @request_m.user.email , from: @request_m.project.user.email , subject: 'Compilation: Obrigado pela Criação de Solicitação'
  end

  def alter_request(request_mailer)
    @request_m = request_mailer

    mail to: @request_m.user.email , from: @request_m.project.user.email , subject: 'Compilation: Alteração na sua solicitação'
  end

end
