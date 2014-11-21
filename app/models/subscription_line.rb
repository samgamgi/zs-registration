class SubscriptionLine < ActiveRecord::Base
belongs_to :product
belongs_to :subscription
end
