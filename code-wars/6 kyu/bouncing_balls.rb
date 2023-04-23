# bouncing_balls.rb

def bouncingBall(h, bounce, window)
  return -1 unless valid_experiment?(h, bounce, window)

  looks = 0
  loop do
    looks += 1
    h *= bounce
    break if h <= window
    looks += 1
  end

  looks
end

def valid_experiment?(h, bounce, window)
  h > 0 && bounce > 0 && bounce < 1 && window < h
end

p bouncingBall(3, 0.66, 1.5) == 3
p bouncingBall(30, 0.66, 1.5) == 15
p bouncingBall(30, 0.75, 1.5) == 21
p bouncingBall(30, 0.4, 10) == 3
p bouncingBall(40, 1, 10) == -1
p bouncingBall(-5, 0.66, 1.5) == -1
