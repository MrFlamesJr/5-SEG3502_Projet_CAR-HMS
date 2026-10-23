Feature: Create hike

  Scenario: Organizer creates a hike with valid information
    Given hiker "organizer-1" is a hiking organizer
    When organizer "organizer-1" creates a hike with valid information
    Then the hike is created with a unique id
    And the hike is open
    And the hike difficulty is the trail difficulty
    And organizer "organizer-1" is recorded as the creator

  Scenario: Trail is not an NCC trail
    Given hiker "organizer-1" is a hiking organizer
    When organizer "organizer-1" creates a hike on a trail that is not in the NCC data
    Then no hike is created

  Scenario: Hike date is outside the trail season
    Given hiker "organizer-1" is a hiking organizer
    When organizer "organizer-1" creates a hike outside the trail season
    Then no hike is created

  Scenario: Registration deadline is too early
    Given hiker "organizer-1" is a hiking organizer
    When organizer "organizer-1" creates a hike with a registration deadline more than two weeks before the hike
    Then no hike is created

  Scenario: Certification expires before the hike
    Given hiker "organizer-1" is a hiking organizer
    And the certification of organizer "organizer-1" expires before the hike date
    When organizer "organizer-1" creates a hike
    Then no hike is created

  Scenario: Organizer level is too low
    Given hiker "organizer-1" is a hiking organizer
    And the level of organizer "organizer-1" is below the trail difficulty
    When organizer "organizer-1" creates a hike
    Then no hike is created
