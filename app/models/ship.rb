require 'pry'

class Ship


  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(arg)
    
    @name = arg[:name]
    @type = arg[:type]
    @booty = arg[:booty]
    @@ships << self
  end


  def self.all
    @@ships
  end

  def self.clear
    self.all.clear
  end





end
