class Delivery < ActiveRecord::Base
belongs_to :user
has_many :delivery_lines
end
