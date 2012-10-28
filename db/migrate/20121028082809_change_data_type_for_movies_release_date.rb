class ChangeDataTypeForMoviesReleaseDate < ActiveRecord::Migration
  def up
    change_table :movies do |t|
      # We don't need the time-of-day the movie is released
      # It only makes searching for a movie by release date difficult
      t.change :release_date, :date
    end
  end

  def down
    change_table :movies do |t|
      t.change :release_date, :datetime
    end
  end
end
