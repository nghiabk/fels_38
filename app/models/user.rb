class User < ActiveRecord::Base
  before_save {self.email = email.downcase}
  has_many :lessons, dependent: :destroy
  has_many :learns, dependent: :destroy
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX},
                                uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, length: {minimum: 6}
  has_many :active_relationships, class_name: "Relationship",
                                  foreign_key: "follower_id",
                                  dependent: :destroy
  has_many :passsive_relationships, class_name: "Relationship",
                                  foreign_key: "followed_id",
                                  dependent: :destroy     
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passsive_relationships, source: :follower
  
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  def following?(other_user)
    following.include?(other_user)
  end
end
end
