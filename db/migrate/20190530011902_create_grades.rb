class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :name
      t.string :course
      t.decimal :id_num
      t.decimal :prel_ex
      t.decimal :mid_ex
      t.decimal :pref_ex
      t.string :fin_ex

      t.timestamps
    end
  end
end
