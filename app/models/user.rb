class User < ActiveRecord::Base
  validates :name , {presence: true}
  validates :email , {presence: true, uniqueness: true}
  validates :password , {presence: true}

def tasks
  return Task.where(user_id: self.id)
end

end
