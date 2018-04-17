class UserMailer < ActionMailer::Base
  default from: "tyzz163@163.com"


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
#   def send_mail(params = {})  
#     @url  = 'http://example.com/login'  
#     mail( :subject => 'abcAAAAAAAASDFADSFADSFADSFDASFASDF',   
#           :to => "xxxxxxxx@163.com",   
#           :from => 'xxxxxxxx@163.com',   
#           :date => Time.now  
#         )   
#   end   
# end  


  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end


  # def account_activation
  #   @user = user
  #   mail to: user.email, subject: "Account activation"
  # end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user) 
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
