class CreateProblems < ActiveRecord::Migration
  def self.up
    create_table :problems do |t|
      t.string 		:problem
      t.string 		:solution
      t.integer 	:year
      t.integer 	:meet
      t.integer 	:round
      t.integer 	:number

      t.timestamps
    end
  end

  def self.down
    drop_table :problems
  end
end
