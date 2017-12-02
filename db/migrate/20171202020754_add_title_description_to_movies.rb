class AddTitleDescriptionToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :title, :string
    add_column :movies, :description, :text
    add_column :movies, :release_date, :date
  end
end
