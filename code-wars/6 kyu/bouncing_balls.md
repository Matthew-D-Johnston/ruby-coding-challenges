##### Code Wars > 6 kyu

---

## Bouncing Balls

**Problem:**  

A child is playing with a ball on the nth floor of a tall building. The height of this floor, _h_, is known.  

He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).  

His mother looks out of a window 1.5 meters from the ground.  

How many times will the mother see the ball pass in front of her window (including when it's falling _and_ bouncing)?  

##### Three conditions must be met for a valid experiment:  

* Float parameter "h" in meters must be greater than 0.
* Float parameter "bounce" must be greater than 0 and less than 1.
* Float parameter "window" must be less than h.

**If all three conditions above are fulfilled, return a positive integer, otherwise return -1.**  

**Note:**  

The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.  

---

**Examples / Test Cases:**  

```ruby
# three parameters: h, bounce, and window
bouncingBall(3, 0.66, 1.5) == 3
bouncingBall(30, 0.66, 1.5) == 15
bouncingBall(30, 0.75, 1.5) == 21
bouncingBall(30, 0.4, 10) == 3
bouncingBall(40, 1, 10) == -1
bouncingBall(-5, 0.66, 1.5) == -1
```

---

**Data Structure:**  

**_Inputs_**

* Three arguments, either Integer or Float objects.
* First argument (`h`) represents the height of the floor from which the ball is dropped.
* Second argument (`bounce`) represents the degree to which the ball bounces (i.e. the proportion of the original height from which the ball is dropped).
* Third argument (`window`) represents the height of the window from which the ball is viewed.

**_Outputs_**

* An Integer object representing the number of times the ball is viewed from the window, both when it is falling and when it is bouncing.

**_Rules_**

* Return `-1` if any of the three conditions for a valid experiment (mentioned above) are not met.

---

**Algorithm:**  

* Define a `valid_experiment?` method to test whether or not one of the three conditions is met.
* Within that method, we would have a line of code something like: `h > 0 && bounce > 0 && bounce < 1 && window < h`
* We then define a `bouncingBalls` method with three parameters: `def bouncingBalls(h, bounce, window)`.
* On the first line we check to see if the experiment is valid and immediately return `-1` if it is not valid: `return -1 unless valid_experiment?(h, bounce, window)`
* We shall intialize a local variable named `looks` which will represent the number of times the ball has been viewed from the window. It will be initially assigned to the value `0`. 
* Then we will begin a `loop`.
  * Within the loop we will immediately increment our `looks` variable by one to represent the look from the ball falling.
  * We then reassign the `h` variable to its original value times the `bounce` value.
  * If the new value of `h` is less than or equal to the value assigned to `window`, then we break from the loop because the ball did not bounce high enough to be viewed again.
  * However, if `h` is strictly greater than the value assigned to `window`, then we increment `looks` by one again to represent the look from the ball bouncing at least as high as the window, and then when the loop starts again we increment by one again to once again represent the look from the ball falling past the window.
* Finally, we return the value of the `looks` variable as the return value of our method.

---

**Code:**  

```ruby
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
```

