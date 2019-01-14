Feature: Generating things
  In order to generate many a thing
  As a CLI newbie
  I want foodie_david to hold m hand tightly

  Scenario: Recipes
    When I run `foodie_david recipe dinner steak`
    Then the following files should exist:
      | dinner/steak.txt |
    Then the file "dinner/steak.txt" should contain
    """
    ##### Ingredients #####
    Ingredients for delicious steak go here.

    ##### Instruction #####
    Tips on how to make delicious steak go here.
    """