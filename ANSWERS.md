# Q0: Why is this error being thrown?
The error is being thrown because the Pokemon controller has not been created yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random Pokemon are appearing because the html calls the index method in the Home controller and cycles through displaying trainerless pokemon found in the seed file. The common factor between all the possible Pokemon that are appearing are that they are "trainerless" and they were provided in the seed file. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line creates a button that calls a patch request to 'capture/:id', which calls the capture method in the Pokemon controller. Capture_path(id: @pokemon) passes in the id of the pokemon into the path so that it calls the patch request 'capture/:id' with the pokemon's id, so that the capture method can assign the pokemon to a new trainer.

# Question 3: What would you name your own Pokemon?
Smithasaur

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
In redirect_to, I passed in trainer_path(current_trainer). The path needed parameters for the id of the current trainer logged in so it would redirect to their profile page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This line shows error messages on the form because it stems from the application.html.erb file and the _messages.html.erb_ file to find messages that were already created and made to fit the html theme. 

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
