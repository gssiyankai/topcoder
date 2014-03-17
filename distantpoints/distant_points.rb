class DistancePoints
  
  def self.getKth(n, k)
    
    size = 2 ** n + 1
    grid = (1..size).map{ |i|
              (1..size).map { |j|
                Point.new i, j, 2 * size**2
              }
           }
           
    marked_points = []
    unmarked_points = grid.flatten
      
    (1..k).each { |kth|
      point = unmarked_points.reduce { |max_point, next_point|
        if(max_point.score < next_point.score)
          next_point
        else
          max_point
        end
      }
      unmarked_points.delete point
      point.score = 0
      marked_points.push point
      unmarked_points.each { |unmarked_point|
        score = (unmarked_point.x - point.x)**2 + (unmarked_point.y - point.y)**2
        if score < unmarked_point.score
          unmarked_point.score = score
        end
      }
    }
    
    final_point = marked_points[k-1]
    [final_point.x, final_point.y]
  end
  
end

class Point
  attr_accessor :x, :y, :score
  
  def initialize(x, y, score)
    @x = x
    @y = y
    @score = score
  end
end
