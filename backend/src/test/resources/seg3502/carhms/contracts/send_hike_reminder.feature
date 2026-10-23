Feature: Send hike reminder

  Scenario: Rain or snow is forecast
    Given hike "hike-1" takes place tomorrow
    And hiker "hiker-1" has a confirmed signup for hike "hike-1"
    And rain or snow is forecast for hike "hike-1"
    When the system sends the reminder for hike "hike-1"
    Then hiker "hiker-1" receives a reminder email
    And the email has a weather warning

  Scenario: No rain or snow is forecast
    Given hike "hike-1" takes place tomorrow
    And hiker "hiker-1" has a confirmed signup for hike "hike-1"
    And no rain or snow is forecast for hike "hike-1"
    When the system sends the reminder for hike "hike-1"
    Then hiker "hiker-1" receives a reminder email
    And the email has no weather warning

  Scenario: Weather service does not respond
    Given hike "hike-1" takes place tomorrow
    And hiker "hiker-1" has a confirmed signup for hike "hike-1"
    And the weather service does not respond
    When the system sends the reminder for hike "hike-1"
    Then hiker "hiker-1" receives a reminder email
    And the email has no weather warning
