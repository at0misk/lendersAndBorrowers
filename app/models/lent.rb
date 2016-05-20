class Lent < ActiveRecord::Base
  belongs_to :lender, :class_name => "User"
  belongs_to :user
end
