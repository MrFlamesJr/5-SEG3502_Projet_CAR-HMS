Feature: Record organizer certification

  Scenario: Administrator records a valid organizer certification
    Given hiker "hiker-1" is registered
    And the authenticated user is an administrator
    When the administrator records a valid certification for hiker "hiker-1"
    Then the certification number and its issue and expiration dates are recorded
    And the organizer level is recorded
    And hiker "hiker-1" is recognized as a hiking organizer

  Scenario: Certification information is invalid
    Given hiker "hiker-1" is registered
    And the authenticated user is an administrator
    When the administrator submits invalid certification information for hiker "hiker-1"
    Then the certification update is rejected
    And hiker "hiker-1" is not recognized as a hiking organizer

  Scenario: Hiker attempts to record a certification
    Given hiker "hiker-1" is registered
    And the authenticated user is hiker "hiker-1"
    When the user attempts to record a certification for hiker "hiker-1"
    Then the certification update is rejected
