require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
  #a = self.artist
  
  # binding.pry
  drake = Artist.create(name: "Drake")
  # self.artist(name: "Drakewww")
    # when this method is called it should assign the song's artist to Drakewww
    self.artist = drake
  end
end