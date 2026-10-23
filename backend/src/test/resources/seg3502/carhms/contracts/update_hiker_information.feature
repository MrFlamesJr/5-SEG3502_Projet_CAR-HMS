Feature: Update hiker information

  Scenario: Hiker updates their own information
    Given hiker "hiker-1" is registered
    And the authenticated user is hiker "hiker-1"
    When the hiker updates their permitted profile information
    Then the hiker's submitted information is updated
    And the hiker's email address remains unchanged

  Scenario: Hiker attempts to update another hiker's information
    Given hiker "hiker-1" and hiker "hiker-2" are registered
    And the authenticated user is hiker "hiker-1"
    When the user attempts to update hiker "hiker-2"
    Then the update is rejected
    And hiker "hiker-2" remains unchanged

  Scenario: Invalid information is submitted
    Given hiker "hiker-1" is registered
    And the authenticated user is hiker "hiker-1"
    When the hiker submits invalid profile information
    Then the update is rejected
    And hiker "hiker-1" remains unchanged
