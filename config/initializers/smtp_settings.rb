ActionMailer::Base.smtp_settings = {
	:address => "smtp.gmail.com",
	:port => 587,
	:domain => "gmail.com",
	:user_name => "ulap.research@gmail.com",
	:password => "h24is229",
	:authentication => "plain",
	:enable_starttls_auto => true
}