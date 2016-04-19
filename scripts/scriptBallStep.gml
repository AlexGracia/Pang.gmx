// start with the movement in x
nextX = x + xSpeed;

// check if the position is valid
if (!place_free(nextX, y))
{
    // calculate the touching position
    incI = sign(xSpeed);
    touchXOffset = 0;
    for (i = 0; i < xSpeed; i += incI)
    {
        if (!place_free(x + i, y))
        {
            // we found the touching position
            break;
        }
        
        // update the last valid offset
        touchXOffset = i;
    }
    
    // move in the opposite direction the rebound magnitude
    reboundX = touchXOffset - xSpeed;
    x += touchXOffset + reboundX;
    
    // we collided against a wall, move in the opposite direction!
    xSpeed = -xSpeed;
}
else
{
    // the next position is free, let's simply move there
    x = nextX;
}

// update the speed Y
ySpeed += global.gravity;
nextY = y + ySpeed;

// check for collisions
if (!place_free(x, nextY))
{
    // calculate the touching position
    incI = sign(ySpeed);
    touchYOffset = 0;
    for (i = 0; i < ySpeed; i += incI)
    {
        if (!place_free(x, y + i))
        {
            // we found the touching position
            break;
        }
        
        // update the last valid offset
        touchYOffset = i;
    }
    
    // move in the opposite direction the rebound magnitude
    reboundY = touchYOffset - ySpeed;
    y += touchYOffset + reboundY;
    
    // change the ySpeed
    if (ySpeed < 0)
    {
        ySpeed = -ySpeed;
    }
    else
    {
        ySpeed = bounceYSpeed;
    }
}
else
{
    // no collisions, simply update the position
    y = nextY;
}

