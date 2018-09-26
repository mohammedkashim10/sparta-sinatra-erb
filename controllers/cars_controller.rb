class App < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # Setting the root as the parent directory of the current directory
  set :root, File.join(File.dirname(__FILE__), "..")

  # Sets the view directory correctly
  set :views, Proc.new {File.join(root, "views")}

  $cars = [
    {
      :id => 1,
      :make => "Audi",
      :model => "R8",
      :year => 2006
    },
    {
      :id => 2,
      :make => "Nissan",
      :model => "GTR",
      :year => 2007
    },
    {
      :id => 3,
      :make => "Ferrari",
      :model => "458",
      :year => 2009
    },
    {
      :id => 4,
      :make => "Pagani",
      :model => "Zonda",
      :year => 1999
    }
  ]

  # INDEX
  get "/cars" do


    erb :"cars/index"
  end

  # NEW
  get "/cars/new" do
    "New Car"
  end

  # SHOW
  get "/cars/:id" do
    "Show Page"
  end

  # CREATE
  post "/cars" do
    "Create car"
  end

  # UPDATE
  put "/cars/:id" do
    "Update car"
  end

  # DELETE
  delete "/cars/:id" do
    "Delete car"
  end

  # EDIT
  get "/cars/:id/edit" do
    "Edit car"
  end

end
