class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomster-tmz.herokuapp.com"

  def comment_added
  	mail(to: "zinsert7@gmail.com",
  		subject: "A comment has been added to your place")
  end
end
