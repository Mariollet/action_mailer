class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
