require_relative '../models/task.rb'

class TaskController
    def initialize
      @command = ARGV.shift
      @argument = ARGV[0..-1].join(" ")
      controller
    end

    def controller
      add if @command == 'add'
      list if @command == 'list'
      delete if @command == 'delete'
      findID if @command == 'findid'
    end

    def list
      # puts Task.task_description
      Task.all_objects.each_with_index { |task, index| puts "#{index +1}. [#{task.completeness == 0 ? ' ' : 'X'}] #{task.task_description}" }
    end

    def all_objects_in_array
      Task.all_objects
    end

    def add
      Task.create!(convert_arg_to_hash)
      puts "Appended #{@argument} to your TODO list."
    end

    def find_id_to_delete
      @id_to_delete = all_objects_in_array[@argument.to_i-1].id
    end

    def delete
      target_task = Task.find(find_id_to_delete)
      target_task.destroy
    end

    def findID
      p @argument
    p Task.find(@argument)
    end

    def convert_arg_to_hash
      {:task_description => @argument, :completeness  => 0}
    end
end

TaskController.new 

