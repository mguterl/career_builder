require 'career_builder'

class Net::HTTP
  alias_method '__initialize__', 'initialize'

  def initialize(*args,&block)
    __initialize__(*args, &block)
  ensure
    @debug_output = $stderr
  end
end

client = CareerBuilder::Client.new("ryan@recruitmilitary.com", "AZG24N4S")

resumes = client.advanced_resume_search(:military_experience => "M1,M2,M3,M4,M5,M6,M7", :zip_code => "45140", :search_radius_in_miles => 150)

# resume = resumes.first

# client.get_resume(:resume_id => resume.id)

puts client.resume_actions_remaining_today(:account_did => "A7C14Q67VKG000YBSCR")
