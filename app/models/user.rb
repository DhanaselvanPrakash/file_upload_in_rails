class User < ApplicationRecord
  has_one_attached :profile

  validates :first_name, :last_name, :gender, :role, :contact, presence: true
  validates :email_id, presence: true, uniqueness: true

  def values_not_valid?
    first_name.present? && last_name.present? && gender.present? && role.present? && contact.present? && email_id.present?
  end
end
