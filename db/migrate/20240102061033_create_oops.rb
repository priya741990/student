class CreateOops < ActiveRecord::Migration[7.0]
  def change
    create_table :oops do |t|
      t.string :name
      t.string :description
      t.string :launch_url
      t.string :consumer_key
      t.string :shared_key

      t.timestamps
    end
  end
end
