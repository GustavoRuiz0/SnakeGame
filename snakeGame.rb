require "gosu"
require_relative "snake"
require_relative "fruit"

class SnakeGame < Gosu::Window
  WIDTH, HEIGHT  = 400, 400
  TILE = 10
  WIDTH_IN_TILE  = WIDTH/TILE
  HEIGHT_IN_TILE = HEIGHT/TILE

  def initialize
    super WIDTH, HEIGHT, false, 1000/15

    @snake = Snake.new
    @fruit = Fruit.new
  end

  def update
    @snake.update
    @fruit.update
  end

  def draw
    @snake.draw
    @fruit.draw
  end

  def button_down(id)
    case id 
    when Gosu::KbDown 
      @snake.down
    when Gosu::KbUp
      @snake.up
    when Gosu::KbLeft
      @snake.left
    when Gosu::KbRight
      @snake.right
    end
  end
end
SnakeGame.new.show