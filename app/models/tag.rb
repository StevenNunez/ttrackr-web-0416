class Tag < ActiveRecord::Base
  has_many :classifications
  has_many :shirts, through: :classifications
end
