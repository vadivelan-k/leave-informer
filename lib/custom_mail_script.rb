require 'net/smtp'

class CustomMailScript
		#~ @@status = ""
		def self.test
				"am inside custom mail script"
		end
		
		def self.send_email(from, from_mail, to, to_mail, subject, content)
				#~ from = "Pandian Ramsankar Cognizant"
				#~ from_mail = "Ramsankar.Pandian@cogniizant.com"
				#~ to = "Vadivelan"
				#~ to_mail = "vadivelan.kuppusamy@cognizant.com"
				#~ subject = "URGENT Feedback discussion with you at 4pm"
				#~ content = "This is a test message."
				#~ begin
						message_body = <<-END_OF_EMAIL
						From: #{from} <#{from_mail}>
						To: #{to} <#{to_mail}>
						Subject: #{subject}
						#{content}
						END_OF_EMAIL

						puts message_body.inspect
						
						puts 1111111111111111111111
						smtp = Net::SMTP.new 'smtpcorp.com', 2525
						puts 22222222222222222
						smtp.enable_starttls
						puts 33333333333333333
						smtp.start("gmail.com", "reachme.vadivelan@gmail.com", "vaddi123", :login) do
								puts 444444444444444
								smtp.send_message(message_body.gsub("\t",""), "testmailer@gmail.com", "vadivelan.kuppusamy@cognizant.com")
								puts 5555555555555
						end
						puts 6666666666666

						#~ @@status = "success"
				#~ rescue
						#~ @@status = "#{$!}"
				#~ end
		end
end


#~ message_body = <<END_OF_EMAIL
#~ From: #{from} <#{from_mail}>
#~ To: #{to} <#{to_mail}>
#~ Subject: #{subject}
#~ #{message_content}
#~ END_OF_EMAIL

#~ puts message_body.inspect

#~ smtp = Net::SMTP.new 'smtp.gmail.com', 587
#~ puts 55555555555555
#~ smtp.enable_starttls
#~ puts 444444444444444444444
#~ smtp.start("gmail.com", "project.redmine1@gmail.com", "vaddi123", :login) do
		#~ puts 333333333333
		#~ smtp.send_message(message_body, "testmailer@gmail.com", to_mail)
		#~ puts 22222222222
#~ end

#~ puts 111111111