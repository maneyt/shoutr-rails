class Shout < ActiveRecord::Base
  belongs_to :user

  validates :body, presence: true

  def body=(new_body)
    self[:body] = new_body.upcase
  end
end
