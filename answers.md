# Q0: Why is this error being thrown?
We haven't created the `Pokemon` model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random pokemon that appear are all starters without trainers that were
found in the `db/seeds.rb` file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line creates a button that says "Throw a Pokeball!" Clicking the button
calls the `capture` method belonging to Pokemon, passing the current pokemon's
id as an argument.

# Question 3: What would you name your own Pokemon?
Bulbabob, Charmanbob, Squirtbob, and Pikabob.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I don't need a path to pass into redirect_to; Rails saves requests paths so I
can just pass in `:back`.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This works because `flash[:error]` (the message that the user sees) is defined
here to be the validation error outputted by the `Pokemon` model.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
