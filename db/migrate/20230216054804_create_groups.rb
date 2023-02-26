class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.references :author, null: false, foreign_key: {to_table: :users}
      t.string :name
      t.string :icon, default: 'https://cdn.icon-icons.com/icons2/196/PNG/128/creditcard_23779.png'

      t.timestamps
    end
  end
end