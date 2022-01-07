class Gym < ApplicationRecord
  mount_uploader :image, ImageUploader
  before_validation :set_introductionless_introduction
  validates :name, presence: true, length: { maximum: 30 }
  validates :city, presence: true
  validates :address, presence: true, length: { maximum: 30 }
  validates :url, length: { maximum: 60 }
  validates :introduction, length: { maximum: 180 }

  validate :opening_closing_check

  belongs_to :user

  private

  def set_introductionless_introduction
    self.introduction = '詳しくは公式サイトへ！！' if introduction.blank?
  end

  def opening_closing_check
    if opening_time && closing_time
      unless opening_time < closing_time
        errors.add(:closing_time, "は開店時間より早い時間を登録できません")
      end
    end
  end
end
