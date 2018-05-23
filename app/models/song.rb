class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if !Artist.all.find_by_name("Drake")
      drake = Artist.create(name: "Drake")
    else
      drake = Artist.all.find_by_name("Drake")
    end
    self.update(artist_id: drake.id)
    drake
  end

end
