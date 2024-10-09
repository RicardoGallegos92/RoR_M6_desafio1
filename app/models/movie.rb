class Movie < ApplicationRecord
  belongs_to :client, optional: true

  def to_s
    return "#{self.name}"
  end
end
