Feature: SNES Mario Controls

  Scenario Outline: Mario jumps
    Given a level is started
    When the player pushes the "<letter>" button
    Then Mario jumps straight up
    
    Examples: Buttons
      | letter |
      | A      |
      | B      |