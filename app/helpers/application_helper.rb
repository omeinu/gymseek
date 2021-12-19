module ApplicationHelper
  def user_display(user)
    if user.image?
      image_tag user.image.url
    else
      image_tag "/assets/default_user.jpg"
    end
  end
end
