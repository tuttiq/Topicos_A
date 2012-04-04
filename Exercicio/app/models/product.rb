class Product < ActiveRecord::Base
  has_many :orders

  validates :name, :price, :presence => true
  validates :price, :numericality => true
  validates :name, :length => { :maximum => 25 }
  validates :description, :length => { :maximum => 500 }

  def to_s
    name
  end
end
