class Log < ActiveRecord::Base
  has_many :requests, :dependent => :destroy
  has_many :notices,  :dependent => :destroy
  attr_accessible :ip, :token

  validates :token, :presence => true, :uniqueness => true, :length => { :minimum => 5 }
  validates :ip, :format => { :with => /([0-9]{1,3}\.){3}[0-9]{1,3}/, :message => "Not a valid IP" }

end
