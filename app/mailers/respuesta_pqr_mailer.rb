class RespuestaPqrMailer < ApplicationMailer
    email_with_name = "Respuesta PQR <daniella0726@gmail.com>"
	default from: email_with_name
 
  def welcome_email
    @pqr = params[:pqr]
    mail(to: @pqr.user.email, subject: 'Se le ha dado respuesta a su PQR' + (@pqr.id).to_s , bcc: 'info@narnajabi.com')
  end
end
