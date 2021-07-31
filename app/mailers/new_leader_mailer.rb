class NewLeaderMailer < ApplicationMailer
  def new_leader_mail(new_leader)
    @new_leader = new_leader
    mail(subject: "あなたがリーダになりました", to: @new_leader.email, from: "test@example.com")
  end
end
