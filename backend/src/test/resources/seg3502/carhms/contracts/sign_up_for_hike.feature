Feature: Sign up for hike

  Scenario: Hiker signs up for a hike with an available place
    Given hiker "hiker-1" has an active membership
    And hike "hike-1" is open with one place available
    And the hike difficulty is at most one level above the hiker's skill level
    When hiker "hiker-1" signs up for hike "hike-1"
    Then a confirmed signup is created for hiker "hiker-1" and hike "hike-1"
    And a confirmation email is sent

  Scenario: Hiker signs up for a full hike
    Given hiker "hiker-1" has an active membership
    And hike "hike-1" is full and registration is still open
    And the hike difficulty is at most one level above the hiker's skill level
    When hiker "hiker-1" signs up for hike "hike-1"
    Then hiker "hiker-1" is added to the waitlist for hike "hike-1"
    And a waitlist confirmation email is sent

  Scenario: Hiker is already signed up for the hike
    Given hiker "hiker-1" already has a signup for hike "hike-1"
    When hiker "hiker-1" signs up for hike "hike-1" again
    Then no additional signup is created

  Scenario: Hiker's skill level is insufficient
    Given hiker "hiker-1" has an active membership
    And hike "hike-1" is more than one level above the hiker's skill level
    When hiker "hiker-1" signs up for hike "hike-1"
    Then no signup is created

  Scenario: Hiker's membership is inactive
    Given hiker "hiker-1" has an inactive membership
    When hiker "hiker-1" signs up for hike "hike-1"
    Then no signup is created

  Scenario: Registration for the hike is closed or the hike is cancelled
    Given hike "hike-1" is closed or cancelled
    When hiker "hiker-1" signs up for hike "hike-1"
    Then no signup is created
