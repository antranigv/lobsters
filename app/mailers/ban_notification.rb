class BanNotification < ApplicationMailer
  def notify(user, banner, reason)
    @banner = banner
    @reason = reason

    mail(
      :from => "#{@banner.username} <khosenk@hell.am>",
      :replyto => "#{@banner.username} <#{@banner.email}>",
      :to => user.email,
      :subject => "[#{Rails.application.name}] You have been banned"
    )
  end
end
