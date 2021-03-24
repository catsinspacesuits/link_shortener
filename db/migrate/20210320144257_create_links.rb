class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.text :original_url
      t.string :short_url

      t.timestamps
    end
  end
end
