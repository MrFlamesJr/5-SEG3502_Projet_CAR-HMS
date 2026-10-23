Feature: Register hiker

  Scenario: Register a hiker with valid information
    Given an unused invitation code "INV-123"
    And no hiker is registered with email "ana@example.com"
    And the visitor is at least 18 years old
    When the visitor registers with valid hiker information and accepts the liability waiver
    Then a hiker with email "ana@example.com" is created
    And the hiker's membership status is "active"
    And the liability waiver acceptance is recorded
    And invitation code "INV-123" is marked as used

  Scenario: Register a minor with a guardian's waiver acceptance
    Given an unused invitation code "INV-456"
    And no hiker is registered with email "sam@example.com"
    And the visitor is under 18 years old
    When the visitor registers with a guardian named "Alex Martin"
    And the guardian accepts the liability waiver
    Then a hiker with email "sam@example.com" is created
    And the guardian's name and waiver acceptance are recorded

  Scenario: Invitation code is invalid
    Given invitation code "INVALID" is not valid
    When the visitor attempts to register with invitation code "INVALID"
    Then no hiker is created

  Scenario: Email is already registered
    Given an unused invitation code "INV-789"
    And a hiker is already registered with email "ana@example.com"
    When the visitor attempts to register with email "ana@example.com"
    Then no additional hiker is created

  Scenario: Required information is missing
    Given an unused invitation code "INV-321"
    When the visitor attempts to register without all required information
    Then no hiker is created

  Scenario: Visitor refuses the liability waiver
    Given an unused invitation code "INV-654"
    And no hiker is registered with email "lea@example.com"
    When the visitor refuses the liability waiver
    Then no hiker is created
    And invitation code "INV-654" remains unused
