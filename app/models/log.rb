class Log < ActiveRecord::Base
  has_many :requests, :dependent => :destroy
  has_many :notices,  :dependent => :destroy
  attr_accessible :ip, :token
end
