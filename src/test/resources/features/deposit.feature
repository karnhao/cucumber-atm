Feature: deposit
    As a customer
    I want to deposit money to my account

Background:
    Given a customer with id 651045100 and pin 1234 with balance 100 exists
    When I login to ATM with id 651045100 and pin 1234

Scenario: Deposit positive amount
    When I deposit 100 to ATM
    Then my account balance is 200

Scenario: Deposit negative amount
    When I deposit -50 to ATM
    Then my account balance is 100