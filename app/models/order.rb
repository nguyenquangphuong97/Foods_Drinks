class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items

  validates :name, presence: true, length: {maximum: Settings.name_length}
  validates :price, presence: true, numericality: {only_integer: true}
  validate :image_size

  scope :newest, ->{order(created_at: :desc)}

  mount_uploader :image, PictureUploader

  private

  def picture_size
    return unless picture.size > Settings.max_upload_size.megabytes
    errors.add :image, t("less_than_5mb")
  end
end
