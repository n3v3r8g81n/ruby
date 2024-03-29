# Ball objects should accept one argument for "ball type" when instantiated.

# If no arguments are given, ball objects should instantiate with a "ball type" of "regular."

# ball1 = Ball.new
# ball2 = Ball.new "super"
# ball1.ball_type  #=> "regular"
# ball2.ball_type  #=> "super"
class Ball
  attr_reader :ball_type

  def initialize(ball_type='regular')
    @ball_type = ball_type
  end
end

unspecified_ball = Ball.new
puts unspecified_ball.ball_type

super_ball = Ball.new('super')
puts super_ball.ball_type


