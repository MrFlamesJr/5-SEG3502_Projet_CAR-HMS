Feature: Browse hikes for hiker

  Scenario: Hiker sees the hikes that match their skill level
    Given hiker "hiker-1" has skill level "intermediate"
    And there are open hikes rated "easy", "moderate", "difficult" and "very difficult"
    When hiker "hiker-1" browses the hikes for their skill level
    Then the hikes rated "easy", "moderate" and "difficult" are shown
    And the hike rated "very difficult" is not shown
