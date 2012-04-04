class Order < ActiveRecord::Base
  belongs_to :client
  belongs_to :product

  validates_associated :client, :product
  validates :amount, :presence => true, :numericality => true

end
