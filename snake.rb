class Snake
  attr_accessor :x, :y

  def initialize
    @x = 10
    @y = 10

    @velx  = 0
    @vely  = 0
  end

  def update
    @x += @velx
    @y += @vely

    @x = 0 if @x > SnakeGame::WIDTH_IN_TILE
    @x = SnakeGame::WIDTH_IN_TILE if @x < 0

    @y = 0 if @y > SnakeGame::WIDTH_IN_TILE
    @y = SnakeGame::WIDTH_IN_TILE if @y < 0
  end

  def draw
    Gosu.draw_rect(
      @x * SnakeGame::TILE,
      @y * SnakeGame::TILE,
      SnakeGame::TILE,
      SnakeGame::TILE,
      Gosu::Color::GREEN,
    )
  end

  def left
    @vely = 0
    @velx = -1
  end

  def up
    @velx = 0
    @vely = -1
  end

  def down 
    @velx = 0
    @vely = 1
  end

  def right
    @vely = 0
    @velx = 1
  end
end