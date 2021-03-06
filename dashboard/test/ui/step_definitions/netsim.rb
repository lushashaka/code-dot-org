When /^I load netsim$/ do
  # Stage 3 puzzle 4 is the "Everything is Enabled" level, for now.
  steps %q{
    And I am on "http://learn.code.org/s/netsim/stage/3/puzzle/4?disableCleaning=true"
    And I wait to see ".netsim_lobby"
  }
end

When /^I enter the netsim name "([^"]*)"$/ do |username|
  steps %{
    And I type "#{username}" into "#netsim_lobby_name"
    And I press the "Set Name" button
    And I wait until element "#netsim_shard_select" is visible
  }
end

When /^I add a router$/ do
  steps %q{
    When I press the "Add Router" button
    And I wait to see a ".router_row"
    And I wait until ".router_row" contains text "Ready"
    And I wait for 0.25 seconds
  }
  # All the waiting is important for the stability of the tests
end

When /^I select the first router$/ do
  steps %q{
    When I press the first ".router_row" element
  }
end

When /^I connect to the first router$/ do
  steps %q{
    When I select the first router
    And I press the "Connect" button
    And I wait until element ".netsim_send_panel" is visible
  }
end
