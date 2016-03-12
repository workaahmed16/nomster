class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"


  def comment_added(comment)
  	@place = comment.place
  	@place_owner = @place.user
  	#I am seeing a pattern when we get info and
  	#store it in a variable
  	#we use the '@' operator. Why?
  	mail(to: @place_owner.email,
  		 subject: "A comment has been added to #{@place.name}")

  end

end
