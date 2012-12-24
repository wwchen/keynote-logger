class Notice < ActiveRecord::Base
  belongs_to :log
  attr_accessible :detail
end
