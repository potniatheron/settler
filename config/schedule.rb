every :saturday, :at => '6am' do 
  runner "UserMailer.weekly_mail"
end