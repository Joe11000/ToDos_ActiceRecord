require_relative '../../config/application.rb'

class Task < ActiveRecord::Base
  scope :all_objects, -> { all }
end

