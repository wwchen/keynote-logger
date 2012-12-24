class Notice < ActiveRecord::Base
  belongs_to :type
  belongs_to :log
  attr_accessible :detail
end
