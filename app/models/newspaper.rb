class Newspaper < ActiveRecord::Base
  attr_accessible :editor, :title

  has_many :subscription_plans

  validates :editor, :title, presence: true
  # maybe also check that they are only word characters?
end
