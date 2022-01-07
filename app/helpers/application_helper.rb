module ApplicationHelper
  def user_display(user)
    if user.image?
      image_tag user.image.url
    else
      image_tag asset_path("default_user.jpg")
    end
  end

  def gym_display(gym)
    if gym.image?
      image_tag gym.image.url
    else
      image_tag asset_path("default_gym.jpg")
    end
  end

  def full_title(html_title = "")
    html_title.blank? ? Constants::Base_title : "#{html_title} - #{Constants::Base_title}"
  end
end
