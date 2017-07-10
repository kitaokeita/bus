class Book < ApplicationRecord
  
  belongs_to :user
  has_many :reservations
  default_scope -> { order(created_at: :desc) }
  
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validate  :picture_size

   def self.from_users_followed_by(user)
    following_ids = user.following_ids
    where("user_id IN (?) OR user_id = ?", following_ids, user)
  end

  private

  #アップロードされた画像のサイズをバリデーションする
  def picture_size
  if picture.size > 5.megabytes
    errors.add(:picture, "should be less than 5MB")
   end
  end  	

end
