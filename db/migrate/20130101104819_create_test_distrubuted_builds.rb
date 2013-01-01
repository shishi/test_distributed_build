class CreateTestDistrubutedBuilds < ActiveRecord::Migration
  def change
    create_table :test_distrubuted_builds do |t|

      t.timestamps
    end
  end
end
