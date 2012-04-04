class Client < ActiveRecord::Base
  has_many :orders

  validates :name, :address, :phone, :presence => true
  validates :phone, :format => { :with => /\([0-9]{2}\) [0-9]{4}\-[0-9]{4}/ }

  def to_s
    name
  end

end
