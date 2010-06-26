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

client.advanced_resume_search(:military_experience => "M1,M2,M3,M4,M5,M6,M7", :zip_code => "45140", :search_radius_in_miles => 150)
