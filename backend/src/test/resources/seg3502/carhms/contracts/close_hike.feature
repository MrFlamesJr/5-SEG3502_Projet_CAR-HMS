Feature: Close hike

  Scenario: Registration deadline is reached
    Given hike "hike-1" is open
    And the registration deadline for hike "hike-1" is reached
    When the system closes hike "hike-1"
    Then hike "hike-1" is closed
    And the system is recorded as the one who closed hike "hike-1"

  Scenario: Registration deadline is not reached
    Given hike "hike-1" is open
    And the registration deadline for hike "hike-1" is not reached
    When the system closes hike "hike-1"
    Then hike "hike-1" is still open
