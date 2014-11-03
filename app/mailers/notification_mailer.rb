class NotificationMailer < ActionMailer::Base
  default :from => 'notifications@pittsburghpartytrophy.com'

  def party_entered(party, user)
    @party = party
    mail(:to => user.email, :subject => 'New party notification')
  end
end
