require_relative '../../config/application.rb'

# this is where you should use an ActiveRecord migration to 

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_description
      t.integer :completeness
      t.timestamps
    end

    #create_table(:tasks){|t| t.string :task_description ;t.integer :completeness ;t.timestamps}
    
  end
end

