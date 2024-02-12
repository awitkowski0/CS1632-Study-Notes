# CS 1632 Midterm 1 Exam Study Guide - Spring 2024

This is an adapted list of resources that were provided by originally by Professor Wonsun Ahn.

The midterm is going to be **open book** but **individual work**.  

## TESTING THEORY AND TERMINOLOGY
* Exhaustive Testing Impossibility: Even a single method can have an enormous number of input combinations, making it impractical to test every scenario. Consider the range of inputs, different states of the system, and interaction with other components, all of which exponentially increase complexity.
* Equivalence Class Partitioning: This technique divides input data of a software unit into partitions of equivalent data from which test cases can be derived, aiming to reduce the total number of tests while covering all possible scenarios.
* Boundary and Interior Values: Identifying these values helps in testing limits and central values of input domains, effectively catching common off-by-one errors and ensuring functionality across the input range.
* Base, Edge, and Corner Cases: Base cases are typical conditions, edge cases are at the boundaries, and corner cases are where multiple boundaries intersect, each requiring specific attention during testing.
* Static vs Dynamic Testing: Static testing involves reviewing code, documentation, and design without executing the program, while dynamic testing involves running the software to check for errors and examining its operational behavior.
* Black Box / White Box / Gray Box Testing: Black box testing examines software functionality without peering into its internal structures or workings. White box testing requires detailed inside knowledge of the software's internals. Gray box testing is a blend, utilizing limited knowledge of the software's internal workings.
* Be able to define all terminology introduced or fill in the blank.

## REQUIREMENTS ANALYSIS
* Implementation-agnostic Requirements: Requirements should focus on what the system should do, not how it should be done, to allow for design and implementation flexibility.
* Verification vs Validation: Verification checks if the product was built right (i.e., matches the specified requirements), while validation checks if the right product was built (i.e., fulfills its intended use).
* Requirements Validation Checks: Validity, completeness, consistency, realism, ambiguity, and verifiability are essential qualities of well-defined requirements, ensuring they are achievable, clear, and testable.
* Functional vs Non-Functional Requirements: Functional requirements define specific behavior or functions, while non-functional requirements specify criteria that can be used to judge the operation of a system, such as performance, usability, reliability, etc.

## TEST PLANS

* Preconditions and Postconditions: Preconditions are conditions that must be true before a test is executed, and postconditions are conditions that must be true after the test has been executed.
* Regression Testing: This is testing that ensures changes have not adversely affected existing functionality. It's crucial for maintaining software quality over time.
* Test Case Reproducibility and Independence: Test cases must be reproducible (yield the same results on repeated executions) and independent (not rely on the outcome of another test).
* Test Cases, Plans, Suites Hierarchy: A test case is a set of conditions under which a tester will determine if a software application is working correctly. A test plan documents the strategy that will be used to verify and ensure that a product or system meets its design specifications and other requirements. A test suite is a collection of test cases that are intended to be used to test a software program to show that it has some specified set of behaviours.
* 
* Be able to explain what problems in a test case may cause it to become not reproducible.
* Be able to explain what problems in a test case cause it to not be independent.
* Be able to explain the hierarchy of test cases, test plans, test suites.
* Be able to define all terminology introduced or fill in the blank.
* **Be able to critique an example test case on what problems it has.**
  * Problems with preciseness, reproducibility, independence.
* **Be able to tell problems with a test plan based on the traceability matrix.**
* **Be able to write a traceability matrix given requirements and test
  cases.**

## DEFECT REPORTING

* Defect vs Enhancement: A defect is a flaw in the software that causes it to behave unexpectedly or produce incorrect results, whereas an enhancement is a new feature or improvement to existing functionality.
* Explicit vs Implicit Requirements: Explicit requirements are clearly stated in the documentation, while implicit requirements are unspoken, assumed qualities or features expected by users.
* Releasing Software with Known Bugs: This happens when the cost or impact of fixing a bug is outweighed by the need to meet deadlines or when a bug's impact is deemed non-critical.
* Coding Style and Defects: While bad coding style can lead to maintenance challenges, it does not constitute a functional defect unless it directly leads to incorrect behavior.

* Be able to explain why implicit requirements make it sometimes hard to tell whether something is a defect or an enhancement.
* Be able to explain why sometimes software is released with known bugs inside them.
* Be able to explain why bad coding style is not a defect.
* Be able to explain what triage and sub-triage are.
* Be able to define all terminology introduced or fill in the blank.
* **Be able to critique an example defect report on what problems it may have.**
  * Problems with preciseness and reproducibility.

## AUTOMATED TESTING
* Pros and Cons of Automated Testing: Automation can significantly speed up testing and increase coverage but may be brittle (easily broken by minor changes) and narrow (limited to scenarios explicitly programmed into tests).
* Be able to discuss in-depth of the pros and cons of automated testing.
  * Why automated testing can be brittle and narrow.
* Be able to explain what test automation looks like in a blackbox testing context and a whitebox testing context.

## UNIT TESTING
* Testing Hierarchy: 
* **Acceptance (validates the software meets business requirements), 
* **system (tests the software as a whole), 
* **integration (tests interactions between components),
* **unit testing (tests individual components in isolation).
* JUnit Testing: Writing tests in JUnit involves annotating test methods with @Test, setting up and tearing down with @Before and @After, and utilizing assertions to verify conditions.
* **Be able to write unit tests in JUnit given a test case.**
* **Be able to write integration tests in JUnit given a test case.**
* **Be able to write JUnit code to create stubs, test doubles, mocks,**
* **Be able to write JUnit code to perform both state verification and behavior verification.**
* Testing private methods
  * Be able to discuss why/why not one might not decide to test them.
  * **Be able to write code to test a private method using Java reflection.**

## TDD
* Be able to draw the red-green-refactor loop.
  * Be able to explain each of its components.
* Be able to explain principles of TDD (including explaining acronyms):
  * YAGNI
  * KISS
  * "Fake it 'til you make it"
  * Avoid interdependency
  * Avoid slow tests
* Be able to discuss the benefits and drawbacks of TDD.
  * When to use it?
  * When not to use it?

## BDD
* Be able to discuss two problems in TDD that BDD solves.
  * Hard to get feedback about requirements from stakeholders
  * Hard to change requirements mid-development due to tests breaking
* Be able to discuss drawbacks of BDD.
  * Drawbacks of specification by example
* **Be able to take Gherkin and Cucumber code and trace through it and explain the end result.**
* **Be able to write Gherkin and Cucumber code given a test scenario, with reuse of Cucumber steps.**

## AUTOMATED (WEB) SYSTEMS TESTING
* Be able to explain why testing a GUI web application involves a lot of text
  testing, just like text UI applications.
* Be able to discuss reasons why testing an HTML verbatim against an expected
  HTML page is not desirable and how Selenium solves those problems.
* Be able to explain why in Selenium, there is an option to select
  different locator strings for the same target element.
* Be able to explain why race conditions occur and how to solve them.
