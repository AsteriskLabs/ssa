ActionMailer::Base.smtp_settings = {
  :address        => 'localhost',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'username',
  :password       => 'password',
  :domain         => 'domain.com'
}
ActionMailer::Base.delivery_method = :smtp