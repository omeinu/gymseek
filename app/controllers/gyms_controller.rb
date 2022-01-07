class GymsController < ApplicationController
  before_action :authenticate_user!, { only: [:new, :create, :edit, :update, :destroy] }
  before_action :ensure_correct_user, { only: [:edit, :update, :destroy] }
  before_action :set_gym_find, { only: [:edit, :update, :dastroy] }
  before_action :set_search
  before_action :set_city_select
  before_action :set_gym_options

  def index
    @gyms = @search_gyms.page(params[:page]).per(10)
  end

  def show
    @gym = Gym.find(params[:id])
  end

  def new
    @gym = Gym.new
  end

  def create
    @gym = current_user.gyms.new(gym_params)
    if @gym.save
      redirect_to gyms_path, notice: "ジム[#{@gym.name}]を登録しました。"
    else
      render new_gym_path
    end
  end

  def edit
  end

  def update
    if @gym.update(gym_params)
      redirect_to gym_url(@gym), notice: "ジム[#{@gym.name}]を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @gym.destroy
    redirect_to gyms_path, notice: "ジム[#{@gym.name}]を削除しました。"
  end

  def ensure_correct_user
    @gym = Gym.find(params[:id])
    @user = User.find_by(id: @gym.user_id)
    if current_user.id != @user.id
      flash[:notice] = "他のユーザーのジムです"
      redirect_to gym_url(@gym)
    end
  end

  private

  def gym_params
    params.require(:gym).permit(:name, :city, :address, :phone_number, :url, :image, :opening_time, :closing_time, :introduction, :parking, :fitness, :swimming, :yoga, :personal, :shower, :sauna)
  end

  def set_gym_find
    @gym = current_user.gyms.find(params[:id])
  end
end
