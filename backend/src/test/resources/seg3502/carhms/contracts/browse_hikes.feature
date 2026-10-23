Feature: Browse hikes

  Scenario: Visitor lists the hikes
    Given there are open, full and closed hikes
    When a visitor browses the hikes
    Then the open and full hikes are shown sorted by date
    And the closed hikes are not shown
    And each hike shows its remaining places

  Scenario: Visitor searches hikes by trail name
    Given there are open hikes on different trails
    When a visitor searches the hikes by trail name
    Then only the hikes on that trail are shown

  Scenario: Visitor searches hikes by date
    Given there are open hikes on different dates
    When a visitor searches the hikes by date
    Then only the hikes on that date are shown

  Scenario: Visitor searches hikes by difficulty
    Given there are open hikes with different difficulties
    When a visitor searches the hikes by difficulty
    Then only the hikes with that difficulty are shown
