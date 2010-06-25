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

# client.advanced_resume_search(:keywords => "ruby", :zip_code =>
# "45140", :search_radius_in_miles =>5)
puts client.get_resume(:resume_id => "RH52G867678F7GH02Q3")
