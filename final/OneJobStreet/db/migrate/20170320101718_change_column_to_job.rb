class ChangeColumnToJob < ActiveRecord::Migration[5.0]
  def self.up
	change_column :jobs,:salary, :double
	change_column :jobs,:address, :text
	change_column :jobs,:description, :text
	change_column :jobs,:experience, :float
  end
  def self.down
	change_column :jobs,:salary, :string
	change_column :jobs,:address, :string
	change_column :jobs,:description, :string
	change_column :jobs,:experience, :string
  end
end
