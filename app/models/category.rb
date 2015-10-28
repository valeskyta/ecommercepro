class Category < ActiveRecord::Base
  has_many :products #metodo product

  def to_s
    self.name
  end
end
