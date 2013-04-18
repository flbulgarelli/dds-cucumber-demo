# language: en
Feature: Suscription
  In order to be notified of list activity
  As a list user
  I want to subscribe to list

  Scenario: Open list
    Given the list is open to suscription
    When I suscribe to list
    Then I become member of the list

  Scenario: Closed list
    Given the list is closed to suscription 
    When I suscribe to list
    Then I become a pending member
