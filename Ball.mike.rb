class Ball
  attr_reader :ball_type

  def initialize(ball_type='regular')
    @ball_type = ball_type
  end
end

ball = Ball.new
puts ball.ball_type

super_ball = Ball.new('super')
puts super_ball.ball_type

foot_ball = Ball.new('foot ball')
puts foot_ball.ball_type
