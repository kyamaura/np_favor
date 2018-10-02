class Task < ActiveRecord::Base
  validates :title, {presence: true}
  validates :compensation, {presence: true}
  validates :reception_deadline, {presence: true}
  validates :content, { length:{maximum:140}}
end
