ActionMailer::Base.smtp_settings = {
    user_name:     'messageboardapplications@gmail.com',
    password:      'messageboardapp',
    domain:        'gmail.com',
    address:       'smtp.gmail.com',
    port:          '587',
    authentication: :plain,
    enable_starttls_auto: true
  }