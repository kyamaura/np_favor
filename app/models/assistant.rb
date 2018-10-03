class Assistant < ActiveRecord::Base
  validates :user_id , {presence: true}
  validates :task_id , {presence: true}
end
