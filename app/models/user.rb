class User < ActiveRecord::Base
  validates :name , {presence: true}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}, allow_blank: true
  validates :email, {presence: true, uniqueness: true}
  validates :password , {presence: true}

def tasks
  return Task.where(user_id: self.id)
end

end
