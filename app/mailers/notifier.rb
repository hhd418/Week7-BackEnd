class Notifier < ActionMailer::Base
  default from: "daniel.gamble.mcadam@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.subscription_confirmation.subject
  #
  def subscription_confirmation(user, project)
  @user = user
  @project = project

  # Change the 'to:' section to your partner's name and email
  mail( to: "#{user.name} <#{user.email}>",
        subject: "Subscribed to #{project.name.capitalize} | Ativa")
  end

  def post_notification(user, post)
    @user = user
      mail( to:"#{user.name} <#{user.email}>",
            subject: "A new post in #{post.project.name.capitalize} has been written."  )
  end
end
