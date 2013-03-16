# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

AFFILIATIONS = ["Democratic Party", "Republican Party", "Independent", "Tea Party", "Green Party", "Libertarian Party", "Marxists Annonymous"]

#Method for prompting the user for the number of records per model they want to seed into the database.
def ask_for_records(model)
  STDOUT.puts "\nHow many #{model} records would you like to generate? (please enter a number)"
  STDIN.gets.chomp.to_i
end

r = Random.new

# ============================================================================
# Voter generation
# ============================================================================

entered_num = ask_for_records("Voter")

if entered_num.integer? && entered_num > 0
  voter = entered_num.times.map do
    Voter.create do |u|
      u.name = Faker::Name.name
      u.email = Faker::Internet.email
      u.location = Faker::Address.state
      u.formal_affiliation = AFFILIATIONS.sample(1).first
    end
  end
  STDOUT.puts "\n#{entered_num} records successfully created!"
else
  STDOUT.puts "\nPlease enter a whole number greater than 0."
  entered_num = STDIN.gets.chomp.to_i
end

# ============================================================================
# Candidate generation
# ============================================================================

entered_num = ask_for_records("Candidate")

if entered_num.integer? && entered_num > 0
  candidate = entered_num.times.map do
    Candidate.create do |c|
      c.name = Faker::Name.name
      c.website = Faker::Internet.url
      c.formal_affiliation = AFFILIATIONS.sample(1).first
    end
  end
  STDOUT.puts "\n#{entered_num} records successfully created!"
else
  STDOUT.puts "\nPlease enter a whole number greater than 0."
  entered_num = STDIN.gets.chomp.to_i
end

# ============================================================================
# Org generation
# ============================================================================

entered_num = ask_for_records("Org")

if entered_num.integer? && entered_num > 0
  org = entered_num.times.map do
    Org.create do |o|
      o.name = Faker::Company.name
      o.location = Faker::Address.state_abbr
      o.contact_name = Faker::Name.name
      o.website = Faker::Internet.url
      o.phone_number = Faker::PhoneNumber.phone_number
      o.approved = true
    end
  end
  STDOUT.puts "\n#{entered_num} records successfully created!"
else
  STDOUT.puts "\nPlease enter a whole number greater than 0."
  entered_num = STDIN.gets.chomp.to_i
end

# ============================================================================
# Policy generation
# ============================================================================

entered_num = ask_for_records("Policy")

if entered_num.integer? && entered_num > 0
  policy = entered_num.times.map do
    Policy.create do |p|
      p.name = Faker::Lorem.sentence(1)
      p.link = Faker::Internet.url
      p.abstract = Faker::Lorem.paragraph(rand(2..5))
      p.org = Org.all.sample(1).first
    end
  end
  STDOUT.puts "\n#{entered_num} records successfully created!"
else
  STDOUT.puts "\nPlease enter a whole number greater than 0."
  entered_num = STDIN.gets.chomp.to_i
end

# ============================================================================
# Question generation
# ============================================================================

entered_num = ask_for_records("Questions")

if entered_num.integer? && entered_num > 0
  question = entered_num.times.map do
    Question.create do |q|
      q.question = Faker::Lorem.sentence(1) + "?"
      q.policy = Policy.all.sample(1).first
    end
  end
  STDOUT.puts "\n#{entered_num} records successfully created!"
else
  STDOUT.puts "\nPlease enter a whole number greater than 0."
  entered_num = STDIN.gets.chomp.to_i
end

