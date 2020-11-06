=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end
class ResistorColorDuo
  COLOR_VALUES = %w[
    black
    brown
    red
    orange
    yellow
    green
    blue
    violet
    grey
    white
  ].freeze

  def self.value(colors)
    #colors.
    #  take(2).
    #  map { |color| COLOR_VALUES.index(color) }.join.to_i
    #  reduce('') { |value, color| value << COLOR_VALUES.index(color).to_s }.to_i

    COLOR_VALUES.index(colors[0]) * 10 + COLOR_VALUES.index(colors[1])
  end
end
