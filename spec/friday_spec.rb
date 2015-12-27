require('rspec')
require('friday')

describe('Time#is_it_friday?') do
  it('If not friday, returns nope') do
    current_time = Time.new()
    expect(current_time.is_it_friday?()).to(eq('Nope'))
  end
  it('If friday returns Hooray') do
    current_time = Time.new(2015, 2, 20)
    expect(current_time.is_it_friday?()).to(eq('Hooray!'))
  end
  it('If Monday returns :(') do
    current_time = Time.new(2015, 2, 16)
    expect(current_time.is_it_friday?()).to(eq('Looks like somebody has a case of the Mondays...'))
  end
end