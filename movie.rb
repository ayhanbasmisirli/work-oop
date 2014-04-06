class Movie

  @@counter = 0
  attr_accessor :name, :rating , :views , :id

  def initialize (name , rating , views)

    @name = name
    @rating = rating
    @views = rating
    @id= Movie.get_id
  end
  def to_s
    puts "id:#{@id} name:#{@name} rating: #{@rating} views: #{@views} "
  end
  def  self.get_id
    @@counter  +=1
    @@counter
  end 

end
