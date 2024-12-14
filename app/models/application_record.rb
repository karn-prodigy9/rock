class ApplicationRecord < ActiveRecord::Base
  include KeyTransformable

  primary_abstract_class
end
