require "./movie_controller"
class Menu
  def initialize
    @me =Movie_controller.new
  end

  def menu
    #crud create read update delete
    puts "[1]Create movie"
    puts "[2]Read movie"
    puts "[3]Update movie"
    puts "[4]Delete movie"
    puts "[0]Exit"
  end
  def run
    done =false
    while !done
      menu
      puts "Please enter your choice"
      choice = gets.chomp
      if  choice.to_i == 0
        done = true
      elsif choice.to_i == 1
        @me.create_movie
      elsif choice.to_i == 2
        @me.read_movie
      elsif choice.to_i == 3
        @me.update_movie
      elsif choice.to_i == 4
        @me.delete_movie
      end
    end

  end

end
selection = Menu.new
selection.run
