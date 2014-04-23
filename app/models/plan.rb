class Plan < ActiveRecord::Base
  belongs_to :company
  validates_numericality_of :amount, less_than: 100_000_000
  validates :amount, :interval, :stripeid, :currency, :name, :company_id, presence: true
end
