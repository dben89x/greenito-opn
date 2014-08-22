class CreateAnswerTypes < ActiveRecord::Migration
  def change
    create_table :answer_templates do |t|
      t.string :name
      t.string :data_type

      t.references :unit
      t.timestamps
    end

    create_table :answer_templates_questions do |t|
      t.references :question
      t.references :answer_template

      t.timestamps
    end
  end
end
