require('pry')

class Time
  define_method(:daylight_savings?) do
    next_week = self
    this_week = self.-(60*60*24*7)
    if next_week.dst?().&(this_week.dst?())
      'My clock is already set forward an hour.'
    elsif next_week.dst?().&(this_week.dst?().eql?(false))
      'Daylight Savings Time is coming soon!'
    elsif next_week.dst?().eql?(false).&(this_week.dst?().eql?(false))
      'Don\'t reset your clocks yet!'
    end
  end
end