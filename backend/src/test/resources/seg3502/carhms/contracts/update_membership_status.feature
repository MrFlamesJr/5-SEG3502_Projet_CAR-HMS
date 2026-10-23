Feature: Update membership status

  Scenario: Administrator updates a hiker's membership status
    Given hiker "hiker-1" is registered
    And the authenticated user is an administrator
    When the administrator changes hiker "hiker-1" membership status to "suspended"
    Then hiker "hiker-1" membership status is "suspended"

  Scenario: Hiker attempts to update a membership status
    Given hiker "hiker-1" is registered
    And the authenticated user is hiker "hiker-1"
    When the user attempts to change hiker "hiker-1" membership status
    Then the update is rejected
    And hiker "hiker-1" membership status remains unchanged
