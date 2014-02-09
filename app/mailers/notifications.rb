class Notifications < ActionMailer::Base
  default from: "leaveadmin@cognizant.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.leave.subject
  #
  def leave(applicant_name, url)
    @applicant_name = applicant_name
    @recorded_url = url
    mail to: "reachme.vadivelan@gmail.com", subject: "#{applicant_name.capitalize} shared important message"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.late.subject
  #
  def late
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.message.subject
  #
  def important_message
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
