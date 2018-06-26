require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name = params['name']
    @age = params['age']
    @breed = params['breed']
    erb :display_puppy
  end

end

# OBJECTIVES
# Implement a POST request to the controller to display data from a user in the view
# Implement both POST and GET requests
# Connect a controller action with both a view and a model
# INSTRUCTIONS
# The focus of this lab is to build a way for a user to go to a homepage, follow a link to a form where they can enter a puppy's information, and, upon submission, view the puppy's information.
#
# Build out a puppy class in models/puppy.rb. Puppies should have name, breed, and age attributes. You will need to be able to pass these three attributes to initialization, as well as readers and writers for the attributes.
#
# In app.rb build out a GET request to load a homepage. The homepage should go to the main route /.
#
# The home page will also need a new view index.erb. This page should welcome you to the Puppy Adoption Site. Add this view to the controller action.
#
# Now, we need to create a form for a user to list a new puppy that is available for adoption. You can create this form in views/create_puppy.erb. Remember, you'll need to set up another controller action for a user to be able to view this form in the browser. Another reminder: the "submit" button of a form is an <input> element with a type of "submit", not a <button> element.
#
# Now we need to make sure the form is being submitted properly. You'll need to have a third controller action that takes the input from the user and renders a third view (views/display_puppy.erb) which displays the info for the puppy that was just created.
#
# Add a link on the homepage to the new puppy form.
