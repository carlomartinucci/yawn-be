class ApplicationMailer < ActionMailer::Base
  default from: 'carlo.martinucci@uqido.com'
  layout 'mailer'

  def deliver_newsletter(newsletter, email)
    @subject = "Yet Another W* Newsletter ##{newsletter.id}"
    @pages = newsletter.pages
    mail(to: email, subject: @subject)
  end
end
