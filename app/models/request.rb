class Request < ActiveRecord::Base
  belongs_to :log
  attr_accessible :content, :error_code, :header, :ip, :type
end
