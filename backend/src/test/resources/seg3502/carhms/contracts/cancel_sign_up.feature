Feature: Cancel sign-up

  Scenario: Hiker cancels a confirmed signup with no waitlist
    Given hiker "hiker-1" has a confirmed signup for hike "hike-1"
    And registration for hike "hike-1" has not reached its deadline
    And no hikers are on the waitlist
    When hiker "hiker-1" cancels the signup for hike "hike-1"
    Then the signup status is "cancelled"
    And the place is released

  Scenario: Hiker cancels a confirmed signup while there is a waitlist
    Given hiker "hiker-1" has a confirmed signup for hike "hike-1"
    And hiker "hiker-2" is first on the waitlist for hike "hike-1"
    And registration for hike "hike-1" has not reached its deadline
    When hiker "hiker-1" cancels the signup for hike "hike-1"
    Then the signup status for hiker "hiker-1" is "cancelled"
    And hiker "hiker-2" receives the released place
    And hiker "hiker-2" is notified by email

  Scenario: Hiker cancels a waitlisted signup
    Given hiker "hiker-1" is on the waitlist for hike "hike-1"
    And registration for hike "hike-1" has not reached its deadline
    When hiker "hiker-1" cancels the signup for hike "hike-1"
    Then the signup status is "cancelled"
    And hiker "hiker-1" is removed from the waitlist

  Scenario: Hiker has no signup that can be cancelled
    Given hiker "hiker-1" has no confirmed or waitlisted signup for hike "hike-1"
    When hiker "hiker-1" attempts to cancel the signup for hike "hike-1"
    Then the cancellation is rejected

  Scenario: Registration deadline has passed
    Given hiker "hiker-1" has a confirmed signup for hike "hike-1"
    And registration deadline for hike "hike-1" has passed
    When hiker "hiker-1" attempts to cancel the signup for hike "hike-1"
    Then the cancellation is rejected
