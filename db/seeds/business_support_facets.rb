def find_or_initialize_facets(klass, facet_names)
  facet_names.each do |slug, name|
    facet = klass.find_or_initialize_by(:slug => slug)
    facet.name = name
    facet.save!
  end
end

# BusinessSupportBusinessType
find_or_initialize_facets(BusinessSupportBusinessType, 
                         {"private-company"         => "Private Company", 
                          "public-limited-company"  => "Public limited company", 
                          "partnership"             => "Partnership", 
                          "social-enterprise"       => "Social enterprise", 
                          "charity"                 => "Charity", 
                          "sole-trader"             => "Sole trader"})

# BusinessSupportLocation
find_or_initialize_facets(BusinessSupportLocation,
                          { "northern-ireland" => "Northern Ireland", 
                            "england"          => "England",
                            "london" => "London",
                            "north-east" => "North East (England)",
                            "north-west" => "North West (England)",
                            "east-midlands" => "East Midlands (England)",
                            "west-midlands" => "West Midlands (England)",
                            "yorkshire-and-the-humber" => "Yorkshire and the Humber",
                            "south-west" => "South West (England)",
                            "east-of-england" => "East of England",
                            "south-east" => "South East (England)",
                            "wales"            => "Wales", 
                            "scotland"         => "Scotland"})

# BusinessSupportSector
find_or_initialize_facets(BusinessSupportSector,
                          {"wholesale-and-retail" => "Wholesale and Retail", 
                           "manufacturing" => "Manufacturing", 
                           "hospitality-and-catering" => "Hospitality and Catering", 
                           "travel-and-leisure" => "Travel and Leisure",
                           "agriculture" => "Agriculture", 
                           "construction" => "Construction", 
                           "information-communication-and-media" => "Information, Communication and Media", 
                           "science-and-technology" => "Science and Technology",
                           "transport-and-distribution" => "Transport and Distribution",
                           "utilities" => "Utilities",
                           "business-and-finance" => "Business and Finance",
                           "education" => "Education",
                           "health" => "Health",
                           "service-industries" => "Service Industries",
                           "mining" => "Mining",
                           "real-estate" => "Real Estate"})

# BusinessSupportStage
find_or_initialize_facets(BusinessSupportStage, {
                          "pre-startup" => "Pre-startup",
                          "start-up" => "Start-up",
                          "grow-and-sustain" => "Grow and sustain"})
# Clean up deprecated stage. This can be deleted once it's run on production
if stage = BusinessSupportStage.where(:slug => "exiting-a-business").first
  stage.destroy
end

# BusinessSupportType
find_or_initialize_facets(BusinessSupportType, {
                          "grant" => "Grant",
                          "finance" => "Finance",
                          "loan" => "Loan",
                          "expertise-and-advice" => "Expertise and Advice",
                          "recognition-award" => "Recognition Award",
                          "equity" => "Equity"})

# BusinessSupportPurpose
find_or_initialize_facets(BusinessSupportPurpose, {
  "business-growth-and-expansion" => "Business growth and expansion",
  "developing-new-product-or-service-ideas" => "Developing new product or service ideas",
  "energy-efficiency-and-the-environment" => "Energy efficiency and the environment",
  "exchanging-ideas-and-sharing-expertise" => "Exchanging ideas and sharing expertise",
  "exporting-or-finding-overseas-partners" => "Exporting or finding overseas partners",
  "finding-new-customers-and-markets" => "Finding new customers and markets",
  "investing-in-plant-machinery-or-property" => "Investing in plant, machinery or property",
  "making-the-most-of-the-internet" => "Making the most of the Internet",
  "performance-improvement-and-best-practice" => "Performance improvement and best practice",
  "setting-up-your-business" => "Setting up your business",
  "taking-new-products-or-services-to-market" => "Taking new products or services to market",
  "taking-on-staff-and-developing-people" => "Taking on staff and developing people"
})