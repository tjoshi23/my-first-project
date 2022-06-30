class ServiceDetail < ApplicationRecord
	serialize :services,Array
  belongs_to :service
end
