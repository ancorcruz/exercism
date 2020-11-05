=begin
Write your code for the 'Two Fer' exercise in this file. Make the tests in
`two_fer_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/two-fer` directory.
=end

class TwoFer
  DEFAULT_RECEIVER = 'you'.freeze

  def self.two_fer(receiver = DEFAULT_RECEIVER)
    "One for #{receiver}, one for me."
  end
end
