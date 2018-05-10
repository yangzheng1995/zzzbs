# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


# config.x.service_mail = "for_dev@163.com"
Rails.application.configure do
    #...只是为了演示邮箱配置的位置，所以省略了其余的配置...
    ActionMailer::Base.delivery_method = :smtp  
    config.action_mailer.perform_deliveries = true  
    config.action_mailer.raise_delivery_errors = true  
    config.action_mailer.default :charset => "utf-8"  
    ActionMailer::Base.smtp_settings = {    
        :address => "smtp.163.com", #邮件服务器地址 
        :port => 25,  
        :domain => "localhost:3000", #服务器域名，如xxx@yeah.net域名就是yeah.net
        :authentication => :login,   
        :user_name => "tyzz163@163.com",  #邮件用户名，如xxx@yeah.net用户名就是xxx
        :password => "yz875333005",  #与登录密码不同，此处是客户端授权密码，切记！
  }
end


#QQ邮箱测试
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.default_url_options = { :host => 'localhost:3000'}
  # config.action_mailer.raise_delivery_errors = true

  # config.action_mailer.smtp_settings = {
  #   :address        => "smtp.qq.com",       # default:QQ_Email
  #   :port           => 587,                  # default: 25
  #   :user_name      => '3127158351',
  #   :password       => 'yz875333005'             
  # }