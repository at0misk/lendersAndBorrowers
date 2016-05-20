class Lender < ActiveRecord::Base
  belongs_to :user
  belongs_to :lender, class_name: "User"
end
