class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items, dependent: :destroy
  has_many :ratings, dependent: :destroy

  validates :name, presence: true, length: {maximum: Settings.name_length}
  validates :price, presence: true, numericality: {only_integer: true}
  validate  :image_size

  scope :newest, ->{order(created_at: :desc)}

  mount_uploader :image, PictureUploader

  private

  def image_size
    return unless image.size > Settings.max_upload_size.megabytes
    errors.add :image, t("less_than_5mb")
  end
end
