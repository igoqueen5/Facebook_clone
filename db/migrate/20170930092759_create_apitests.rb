class CreateApitests < ActiveRecord::Migration
  def change
    create_table :apitests do |t|

      t.timestamps null: false
    end
  end
end
