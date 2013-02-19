class Order < ActiveRecord::Base
  include OrdersHelper

  attr_accessible :cost, :name, :quantity, :customer_id, :item_id, :customer_name

  belongs_to :customer
  has_one :item

  before_validation :convert_customer_name_to_id
  validates :customer_id, :presence => {:message => "Customer name must be provided and match exiting customer"}
end
