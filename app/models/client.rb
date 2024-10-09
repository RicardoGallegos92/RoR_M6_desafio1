class Client < ApplicationRecord
  has_many :movies

  def to_s
    return "#{self.name} #{self.age} años"
  end
end
