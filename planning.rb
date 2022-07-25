# You have a game class
  # Reloads whenever a new game is start
    # Loads when game started
    # When a winner has been decided
  # Has turns to it
    # Each new turn loads a new question
  # Needs a way to get something from user
    #  Then compare this with the answer for a particular question
# A player class
  # needs the score for each player (lives)
# A question class


# Player Class
  # Relevant Info
    # name
    # current score
    # current player?
  # Initialized With
    # name
    # lives
  # Public Methods
    # nothing

# Question Class
  # Relevant Info
    # answer
  # Initialized With
    # nothing needed
  # Public Methods
    # random question
      # choose two random numbers from 1 and 20
      # puts a new question
      # return an anwser to that question
    # getUser Input
      # Get the user input and store it in a variable
      # return true or false

# Game Class
  # Relevant Info
    # Current score for game
    # Which players turn is it currently
  # Initialized With
    # players
  # Public Method
    # Reset game
      # reset game loop
      # puts the game over message along with player that won msg
      # use a while loop to ensure game still run until a player loses 3 lives
    # Overall game score
      # puts the current score
    # Load New Round
      # keep doing this while a players lives is above 0
        # while loop
      # loads a new question from the question class (call method from questions class)
      # assigns new current player
      # call getUser input
      # call Correct/Incorrect method
    # correct/incorrect
      # based on getUser input
      # update the score for the current player

      

