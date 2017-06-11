class UserInterest < ApplicationRecord
  belongs_to :person
  belongs_to :course
end
