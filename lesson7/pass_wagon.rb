class PassWagon
  include InstanceCounter
  include NameCompany
  include Format
  attr_reader :type, :number, :busy_seats, :free_seats

  @quantiti = 0

  def initialize(number, seats)
    @number = number
    @type = 'passenger'
    validate!
    @seats = seats
    @free_seats = seats
    @busy_seats = 0
    register_instance
  end

  def take_a_seat
    if @free_seats != 0
      @busy_seats += 1
      @free_seats -= 1
    else
      puts 'Мест нет'
    end
  end
end
