class Fruit
  attr_accessor :x, :y

  def initialize
    @x = rand 40 * SnakeGame::TILE
    @y = rand 40 * SnakeGame::TILE
  end

  def update

  end

  def draw
    Gosu.draw_rect(
      @x,
      @y,
      SnakeGame::TILE,
      SnakeGame::TILE,
      Gosu::Color::RED,
    )
  end
end