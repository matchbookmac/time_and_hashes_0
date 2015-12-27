require('pry')

class Time
  define_method(:is_it_friday?) do
    if self.monday?()
      'Looks like somebody has a case of the Mondays...'
    elsif self.friday?()
      'Hooray!'
    else
      'Nope'
    end
  end
end