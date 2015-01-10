class AddPictureToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :picture, :bytea
  end
end
