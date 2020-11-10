Before do |feature|
  head_test
end

Before do
  
end

AfterStep do

end

After do |scenario|
  
  scenario_name = scenario.name.tr(' ','_').downcase!

  if scenario.failed?
    tira_foto(scenario_name, 'fail')
  else
    tira_foto(scenario_name, 'sucess')
  end
  
end