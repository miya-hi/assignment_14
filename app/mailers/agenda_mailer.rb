class AgendaMailer < ApplicationMailer
  def agenda_mail(agenda,user)
    @agenda = agenda
    @agenda_member_email = @agenda.team.members.pluck(:email)
    mail(subject: "Agendaが削除されました",to: @agenda_member_email, from: "test@example.com")
  end
end
