class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    drake_id = Artist.find_by(name: "Drake").id
    self.update(artist_id: drake_id)
    # when this method is called it should assign the song's artist to Drake
  end
end
