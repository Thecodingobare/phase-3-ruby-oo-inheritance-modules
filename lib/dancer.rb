require_relative './dance_module'
require_relative './meta_dancing_module'

require_relative './fancy_dance.rb'


class Dancer
    include Dance
     #include keyword, we allow our classes to use all of the methods of the included module as instance methods
    extend MetaDancing#In order to lend a module's methods to a class as class methods, we use the extend keyword. Let's write yet another module that we can extend into our classes as class methods. For the purposes of this example, let's create a shareable class method, metadata, which will report on some pertinent (shared) information regarding both classes.


    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods

    attr_accessor :name

    def initialize(name)
        @name=name
    end

end
