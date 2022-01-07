class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search
  before_action :set_city_select
  before_action :set_gym_options

  def set_search
    @search = Gym.ransack(params[:q])
    @search_gyms = @search.result(distinct: true)
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end

  def set_city_select
    @city_array = ["岡山市北区", "岡山市中区", "岡山市東区", "岡山市南区", "倉敷市", "津山市", "玉野市", "笠岡市", "井原市", "総社市", "高梁市", "新見市", "備前市", "瀬戸内市", "赤磐市", "真庭市", "美作市", "浅口市", "和気町", "早島町", "里庄町", "矢掛町", "新庄村", "鏡野町", "奈義町", "西粟倉村", "久米南町", "美咲町", "吉備中央町"]
  end

  def set_gym_options
    @gym_options = ["parking", "fitness", "swimming", "yoga", "personal", "shower", "sauna"]
  end
end
