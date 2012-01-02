class Index < ActiveRecord::Base
  validate :name, :presence => true
  belongs_to :user
end
