class Product < ActiveRecord::Base
  has_many :orders, dependent: :destroy

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
