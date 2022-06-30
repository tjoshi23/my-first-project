class Service < ApplicationRecord
  belongs_to :category
  has_one :service_detail
end
