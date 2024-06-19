# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

# Print all candidates
puts "All Candidates:"
pp @candidates

# Find a specific candidate by id
candidate_id = 5
found_candidate = find(candidate_id)
puts "\nCandidate with id #{candidate_id}:"
pp found_candidate

# List all qualified candidates
puts "\nQualified Candidates:"
qualified = qualified_candidates(@candidates)
pp qualified

# List all candidates ordered by qualifications
puts "\nCandidates ordered by qualifications:"
ordered_candidates = ordered_by_qualifications(@candidates)
pp ordered_candidates