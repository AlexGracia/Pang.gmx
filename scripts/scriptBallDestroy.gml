// create a couple of new balls to the left and the right
leftBall = instance_create(x - 0.25 * sprite_width, y, argument0);
rightBall = instance_create(x + 0.25 * sprite_width, y, argument0);

// set the speeds
leftBall.xSpeed = -abs(leftBall.xSpeed);
rightBall.xSpeed = abs(rightBall.xSpeed);

