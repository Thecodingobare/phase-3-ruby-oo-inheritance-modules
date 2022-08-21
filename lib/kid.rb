require_relative './dance_module'
require_relative './meta_dancing_module'

require_relative './fancy_dance.rb'


class Kid

    extend FancyDance::ClassMethods
    #We refer to the namespaced modules or classes with ::. This syntax references the parent and child relationship of the nested modules.
    include 
    FancyDance::InstanceMethods

    #Remember, include is used to add functionality to our classes via instance methods. The InstanceMethods module inside the FancyDance module contains the methods twirl, jump, pirouette, and take_a_bow, which any instance of the Dancer or Kid class can do.


    include Dance
    #include keyword, we allow our classes to use all of the methods of the included module as instance methods
    extend MetaDancing
    #In order to lend a module's methods to a class as class methods, we use the extend keyword. Let's write yet another module that we can extend into our classes as class methods. For the purposes of this example, let's create a shareable class method, metadata, which will report on some pertinent (shared) information regarding both classes.

    attr_accessor :name

    def initialize(name)
        @name=name
    end
end

