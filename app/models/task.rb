class Task < ActiveRecord::Base

  validates :title, {presence: true}
  validates :compensation, {presence: true}
  validates :reception_deadline, {presence: true}
  validates :content, { length:{maximum:140}}
  validates :user_id, {presence: true}

def user
  return User.find_by(id: self.user_id)
end

end
