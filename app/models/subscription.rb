class Subscription < ActiveRecord::Base
belongs_to :user
has_many :subscription_lines

  def total
  	sum = 0
  	subscription_lines.each do |line|
  		sum += line.price * line.quantity
  	end
  	return sum
  end
end
