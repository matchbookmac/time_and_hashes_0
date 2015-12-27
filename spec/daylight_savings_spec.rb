require('rspec')
require('pry')
require('daylight_savings')

describe('Time#daylight_savings?') do
  it('If not next week or this week, returns nope') do
    next_week = Time.new(2015, 2, 19).+(60*60*24*7)
    expect(next_week.daylight_savings?()).to(eq('Don\'t reset your clocks yet!'))
  end
  it('If next week, but not this week, returns it\'s soon') do
    next_week = Time.new(2015, 3, 1, 2, 1, 0).+(60*60*24*7)
    expect(next_week.daylight_savings?()).to(eq('Daylight Savings Time is coming soon!'))
  end
  it('If already dst, returns already set') do
    next_week = Time.new(2015, 3, 8, 2, 1, 0).+(60*60*24*7)
    expect(next_week.daylight_savings?()).to(eq('My clock is already set forward an hour.'))
  end
end