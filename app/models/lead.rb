class Lead < ApplicationRecord
  NEW_STATUS = 'new'
  ACTIVE_STATUS = 'active'
  INACTIVE_STATUS = 'inactive'
  CLOSED_STATUS = 'closed'
  STATUSES = [NEW_STATUS, ACTIVE_STATUS, INACTIVE_STATUS, CLOSED_STATUS].freeze

  belongs_to :user
  belongs_to :zip_code

  validates :user, presence: true
  validates :zip_code, presence: true

  before_save :set_default_status

  def set_default_status
    self.status ||= NEW_STATUS
  end
end
