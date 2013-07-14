require_relative '../app/models/task'
require 'faker'

20.times do
  Task.create :task_description => Faker::Lorem.sentence(word_count = [3,4,5].sample, supplemental = false),
              :completeness  => 0
end

