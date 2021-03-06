class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :username, :email
  validates :password, length: {minimum: 6}, allow_blank: true
  has_many :messages
  has_many :comments
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
