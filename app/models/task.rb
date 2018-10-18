class Task < ActiveRecord::Base

  validates :title, {presence: true}
  validates :compensation, {presence: true}
  validates :reception_deadline, {presence: true}
  validates :content, { length:{maximum:140}}
  validates :user_id, {presence: true}
  validate :reception_deadline_cannot_be_in_the_past

def reception_deadline_cannot_be_in_the_past
  if reception_deadline < Date.today
    errors.add(:reception_deadline, ": 過去の日付は使用できません")
  end
end

def user
  return User.find_by(id: self.user_id)
end

end
