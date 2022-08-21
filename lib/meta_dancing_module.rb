module MetaDancing

  def metadata
    "This class produces objects that love to dance."
  end
end



#In order to lend a module's methods to a class as class methods, we use the extend keyword. Let's write yet another module that we can extend into our classes as class methods. For the purposes of this example, let's create a shareable class method, metadata, which will report on some pertinent (shared) information regarding both classes.