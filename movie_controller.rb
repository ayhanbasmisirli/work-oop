require './movie'
class Movie_controller
  def initialize
    @movies =[]
  end
  def create_movie
    puts "Please enter the movie name"
    name = gets.chomp
    puts "Please enter the movie rating"
    rating = gets.chomp
    puts "Please enter the movie views"
    view =gets.chomp
    movie = Movie.new(name,rating,view)
    @movies << movie
  end
  def read_movie
    @movies.each do |x|
      puts x.to_s
    end
  end
  def update_movie
    puts  "Please enter id of the movie to update"
    id = gets.chomp

    @movies.each do |x|
      if x.id == id.to_i
        puts "Please enter the new name"
        name = gets.chomp
        x.name =name
        puts "Please enter the new rating"
        rating = gets.chomp
        x.rating =rating
        puts "Please enter the views"
        views = gets.chomp
        x.views = views
      elsif x.id != id.to_i
        puts "You dont have a movie in your database with this id"
      end
    end
  end
  def delete_movie
      puts "Please enter id the movie to delete"
      id = gets.chomp
      @movies.delete_if {|x| x.id.to_i == id.to_i }
  end
end
