Feature: Cancel hike

  Scenario: Organizer cancels a hike
    Given hike "hike-1" is open and was created by organizer "organizer-1"
    And hike "hike-1" has confirmed and waitlisted signups
    When organizer "organizer-1" cancels hike "hike-1" with a reason
    Then hike "hike-1" is cancelled
    And all signups for hike "hike-1" are cancelled
    And organizer "organizer-1" and the reason are recorded
    And each hiker whose signup was cancelled receives an email with the reason

  Scenario: Administrator cancels a hike
    Given hike "hike-1" is open
    And the authenticated user is an administrator
    When the administrator cancels hike "hike-1" with a reason
    Then hike "hike-1" is cancelled

  Scenario: User is not the organizer of the hike
    Given hike "hike-1" is open and was created by organizer "organizer-1"
    When organizer "organizer-2" cancels hike "hike-1" with a reason
    Then the cancellation is rejected

  Scenario: Hike has already started
    Given hike "hike-1" was created by organizer "organizer-1"
    And hike "hike-1" has started
    When organizer "organizer-1" cancels hike "hike-1" with a reason
    Then the cancellation is rejected

  Scenario: No reason given
    Given hike "hike-1" is open and was created by organizer "organizer-1"
    When organizer "organizer-1" cancels hike "hike-1" without a reason
    Then the cancellation is rejected
