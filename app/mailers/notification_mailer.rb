class NotificationMailer < ActionMailer::Base
  default :from => 'notifications@pittsburghpartytrophy.com'

  def party_entered(party)
    @party = party
    mail(:to => 'jeffhos@eclecsia.org', :subject => 'New party notification')
  end
end
