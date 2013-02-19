class Customer < ActiveRecord::Base
  include CustomersHelper
  attr_accessible :contact, :name, :phone

  has_many :orders

end
