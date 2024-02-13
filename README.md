# CS 1632 Midterm 1 Exam Study Guide - Spring 2024

This is an adapted list of resources that were provided by originally by Professor Wonsun Ahn.

The midterm is going to be **open book** but **individual work**.  

## Table of Contents

- [Testing Theory and Terminology](#testing-theory-and-terminology)
- [Requirements Analysis](#requirements-analysis)
- [Test Plans](#test-plans)
- [Defect Reporting](#defect-reporting)
- [Automated Testing](#automated-testing)
- [Unit Testing](#unit-testing)
- [TDD (Test-Driven Development)](#tdd-test-driven-development)
- [BDD (Behavior-Driven Development)](#bdd-behavior-driven-development)
- [Automated (Web) Systems Testing](#automated-web-systems-testing)


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

Test Plans are critical for ensuring systematic and efficient testing of software applications. They define the scope, approach, resources, and schedule of intended test activities.

### Preconditions and Postconditions

- **Preconditions** are the state of the system before test execution begins. They set the stage for a test to be carried out under specified conditions.
- **Postconditions** are the expected state of the system after the test has been executed. They define the expected outcome of the test, ensuring that the test's objectives are met.

### Regression Testing

Regression testing is vital for verifying that new changes have not adversely affected existing functionality. It helps in maintaining software quality by catching new bugs introduced by code modifications.

### Test Case Reproducibility and Independence

- **Reproducibility** ensures that a test case yields the same results upon repeated executions, which is crucial for reliable testing.
- **Independence** means that the execution and outcome of one test case do not depend on another. This allows tests to be run in any order without affecting the accuracy of the test results.

### Test Cases, Plans, Suites Hierarchy

- **Test Case**: The smallest unit in the testing hierarchy, consisting of a set of conditions and expected results to validate a specific aspect of the software.
- **Test Plan**: A document detailing the strategy, resources, scope, and schedule of the testing activities. It encompasses multiple test cases focusing on a specific feature or aspect of the software.
- **Test Suite**: A collection of test plans and cases that are grouped together to test the software comprehensively. It ensures coverage of all functionalities and requirements.

### Critique and Traceability

- **Critiquing Test Cases**: Evaluating test cases for preciseness, reproducibility, and independence. A well-crafted test case should clearly define preconditions, execution steps, and postconditions without ambiguity or dependence on other tests.

- **Traceability Matrix**: A tool for ensuring every requirement is tested and every test case is linked to a requirement. It highlights gaps in the test coverage and ensures that all functionalities are validated against the specified requirements.

  - **Forward Traceability**: Maps requirements to their corresponding test cases, ensuring all requirements are covered by tests.
  - **Backward Traceability**: Maps test cases back to their original requirements, ensuring no extraneous tests are performed that do not correspond to specified requirements.

## DEFECT REPORTING

### Defect vs Enhancement

- **Defect**: A flaw in the software that causes it to behave unexpectedly or produce incorrect results. Defects violate explicit or implicit requirements.
- **Enhancement**: A suggestion for new features or improvements to existing functionality that does not address a flaw but proposes an addition or modification.

### Explicit vs Implicit Requirements

- **Explicit Requirements**: Clearly defined and documented requirements in the Software Requirements Specification (SRS). They include both functional and non-functional aspects.
- **Implicit Requirements**: Assumed qualities or features expected by users based on the application domain, even though they're not documented in the SRS. Violations of implicit requirements are still considered defects.

### Releasing Software with Known Bugs

Software may be released with known defects when:
- The cost or impact of fixing a bug outweighs the benefits.
- The bug's impact is considered non-critical or has a manageable workaround.
- Meeting deadlines is prioritized over achieving zero known defects.

### Coding Style and Defects

- While bad coding style can lead to maintenance challenges and potentially increase the likelihood of future defects, it does not constitute a functional defect unless it directly causes incorrect software behavior.

### Triage and Sub-Triage

- **Triage**: The process where stakeholders review reported defects to determine their validity, severity, priority, and assignment for resolution.
- **Sub-Triage**: In larger projects, an additional level of triage may occur within subsystems to further prioritize and assign defects to specific developers or teams.

### Reporting Defects

A typical defect report includes:
- **Summary**: A concise description of the problem.
- **Description**: Detailed information about the defect.
- **Reproduction Steps**: Clear steps to reproduce the defect, including any preconditions.
- **Expected vs Observed Behavior**: A description of what was expected and what was actually observed.
- **Impact**: The potential impact on stakeholders.
- **Severity**: The seriousness of the defect.
- **Priority**: The urgency of addressing the defect.

### Common Problems in Defect Reports

- **Lack of Preciseness**: Vague descriptions that make it hard to understand or reproduce the defect.
- **Reproducibility Issues**: Reports that do not provide a consistent way to reproduce the defect.
- Reports lacking independence, implying that defects depend on the outcomes of other tests or conditions outside the control of the testing process.

Effective defect reporting is essential for maintaining software quality, facilitating the timely resolution of issues, and ensuring that software meets both explicit and implicit requirements.

## AUTOMATED TESTING

Automated testing plays a crucial role in modern software development, offering significant advantages over manual testing by automating repetitive tasks.

### Pros and Cons of Automated Testing

- **Pros**:
  - **Speed and Efficiency**: Automation can execute a large number of tests quickly, significantly speeding up the testing process.
  - **Increased Coverage**: Automated tests can run more frequently, covering more features and scenarios.
  - **Reproducibility**: Automated tests can be executed with the same precision every time, ensuring consistent results.
  - **Cost Reduction**: Over time, automation reduces the time and resources needed for testing.

- **Cons**:
  - **Brittleness**: Automated tests can be sensitive to minor changes in the software or UI, requiring maintenance to keep tests up to date.
  - **Narrow Focus**: Tests only cover scenarios that have been explicitly programmed, potentially missing unforeseen issues.
  - **Initial Setup Time**: Setting up an automated testing framework requires time and skilled resources.
  - **Tool Dependency**: Reliance on specific tools or frameworks can introduce learning curves and tool-specific limitations.

### Automated Testing in Different Contexts

- **Blackbox Testing Context**: Automated blackbox testing focuses on testing the software from an external perspective, without knowledge of the internal workings. This approach uses the application's UI or API to test functionality against specified requirements.

- **Whitebox Testing Context**: In contrast, automated whitebox testing involves testing the internal structures or workings of an application. This approach is more granular, allowing tests to interact directly with the application's code, often utilizing frameworks like JUnit for unit testing.

### Implementation Considerations

Automated testing requires a balance between the depth of testing and the maintenance effort. While it offers significant advantages in speed and efficiency, the potential for tests to become brittle or too narrowly focused necessitates careful planning and ongoing maintenance. Additionally, combining automated testing with manual testing strategies can provide comprehensive coverage, leveraging the strengths of both approaches for optimal software quality assurance.

### Practical Application

For both blackbox and whitebox testing contexts, automated testing frameworks such as Selenium for web applications and JUnit for Java applications offer powerful tools for developing robust test suites. These frameworks support the creation of tests that can simulate user interactions, verify application behavior, and ensure that both front-end and back-end components function correctly as expected.

The choice between blackbox and whitebox automated testing approaches depends on the specific goals of the testing effort, the nature of the application under test, and the available resources and expertise.

## UNIT TESTING

Unit Testing is a fundamental practice in software development, focusing on testing individual components or units of code in isolation to ensure they function as intended.

### Testing Hierarchy:

- **Acceptance Testing**: Validates the software meets business requirements.
- **System Testing**: Tests the software as a whole.
- **Integration Testing**: Tests interactions between components.
- **Unit Testing**: Tests individual components in isolation.

### JUnit Testing:

JUnit is a popular framework for unit testing in Java, providing a structured way to write and run tests.

- **Writing Tests**: In JUnit, test methods are annotated with `@Test`. Setup and teardown operations are handled with `@Before` and `@After` annotations, respectively.
- **Assertions**: Utilize JUnit assertions such as `assertEquals()`, `assertTrue()`, etc., to verify conditions and expected outcomes.

### Examples:

**Unit Tests in JUnit**:

Given a test case, writing unit tests involves creating test methods that exercise specific functionality of the component under test and asserting the expected outcome.

**Integration Tests in JUnit**:

Integration tests focus on the interactions between components. These tests ensure that integrated components work together as expected.

**Creating Stubs, Test Doubles, Mocks**:

JUnit, combined with mocking frameworks like Mockito, allows the creation of stubs and mocks to simulate the behavior of real objects, facilitating testing in isolation without relying on external dependencies.

**State Verification and Behavior Verification**:

- **State Verification**: Checks the state of an object after a method call to ensure it has changed as expected.
- **Behavior Verification**: Uses mocking frameworks to verify that certain methods were called with the correct parameters.

### Testing Private Methods:

While there's a debate about whether private methods should be tested directly, it's possible to do so using Java reflection, allowing tests to access and invoke private methods.

**Example**: Testing a private method using Java reflection involves accessing the method by name, making it accessible, and then invoking it with the appropriate parameters.

### Considerations:

- **When to Use**: Unit testing is essential throughout the development process to ensure individual components function correctly.
- **Benefits**: Provides a safety net for changes, facilitates refactoring, and improves code quality.
- **Challenges**: Writing effective unit tests requires understanding the component's expected behavior, managing test data, and handling dependencies.

Unit Testing, particularly when adhering to practices like TDD (Test-Driven Development), forms a crucial part of software development, ensuring reliability and maintainability of code.

## TDD (Test-Driven Development)

TDD is a software development approach where tests are written before the code. It follows a simple cycle known as the Red-Green-Refactor loop.

### The Red-Green-Refactor Loop

1. **Red**: Write a test for new functionality that fails because the functionality isn't implemented yet.
2. **Green**: Write just enough code to make the test pass.
3. **Refactor**: Improve the code while keeping it functional, enhancing readability, structure, and performance.

### Principles of TDD

- **YAGNI** (You Ain't Gonna Need It): Focus on what's necessary at the moment, avoiding speculative generality.
- **KISS** (Keep It Simple, Stupid): Aim for simplicity; avoid overcomplicating the solution.
- **Fake it 'til you make it**: Initially, implement just enough to pass the test, even with hard-coded returns, then refactor for a proper solution.
- **Avoid Interdependency**: Tests should run independently of each other to ensure changes in one part don't break another.
- **Avoid Slow Tests**: Keep tests fast to maintain a quick feedback loop for developers.

### Benefits and Drawbacks of TDD

#### Benefits

- Ensures code coverage from the start.
- Facilitates early bug detection and easier debugging.
- Encourages clear, concise, and maintainable code.
- Integrates testing into the development process, enhancing software quality.

#### Drawbacks

- Initial learning curve and setup time.
- May slow down development speed in the short term.
- Not all scenarios or complex behaviors can be easily tested with TDD.

### When to Use TDD

- For new projects or modules where tests can drive design.
- When adding features or fixing bugs in existing code to prevent regressions.

### When Not to Use TDD

- For exploratory or prototype stages where requirements are rapidly changing.
- In highly complex systems where setting up the test environment is impractical.

TDD emphasizes that testing, coding, and design are interlinked processes. By adhering to its principles, developers can ensure that their code is reliable, easier to maintain, and aligned with requirements. However, the choice to use TDD should be balanced with the project needs, complexity, and team expertise.


## BDD (Behavior-Driven Development)

BDD extends TDD by specifying application behavior in English-like phrases, making it accessible to non-technical stakeholders. It aims to solve common issues in TDD and foster better communication between developers, QA engineers, and business analysts.

### Problems in TDD that BDD Solves

- **Hard to get feedback about requirements from stakeholders**: TDD's technical focus can alienate non-technical stakeholders. BDD's use of natural language (Gherkin syntax) allows for clearer communication of requirements and tests, facilitating easier feedback.

- **Hard to change requirements mid-development due to tests breaking**: BDD's emphasis on behavior rather than implementation details makes it more adaptable to changing requirements without extensive test rewrites.

### Drawbacks of BDD

- **Drawbacks of specification by example**: While BDD's examples provide concrete cases, they may not cover all possible scenarios or edge cases, potentially leaving gaps in test coverage.

### Gherkin and Cucumber Code Explanation

Gherkin is a language used to write test cases for BDD that are understandable by all stakeholders. Cucumber is a tool that executes these Gherkin-written features as automated tests.

```gherkin
Feature: User login
  Scenario: Successful login with valid credentials
    Given a user exists with username "user1" and password "password"
    When the user tries to login with username "user1" and password "password"
    Then the user should be successfully logged in

Feature: User login failure
  Scenario: Unsuccessful login with invalid password
    Given a user exists with username "user1" and password "password"
    When the user tries to login with username "user1" and password "wrongpassword"
    Then the user should receive an error message
```

  
## Automated (Web) Systems Testing

### GUI Web Application Testing: Text Testing Justification

- **Theory Behind Testing GUI Apps**: GUI applications, including web applications, inherently involve a lot of text testing similar to text UI applications. This is primarily because, at their core, web applications use HTML (HyperText Markup Language), which is fetched from a web server when a URL is requested and then rendered by the web browser into graphical elements. Thus, even though these applications have graphical interfaces, the underlying mechanisms for displaying content and interacting with the user are heavily based on text data.

### Disadvantages of Naïve HTML Comparison and Selenium's Solution

- **Problems with Naïve HTML Comparison**:
  - Tests become unreadable due to the sheer volume of elements within an HTML page, making it unclear which values or elements the test aims to check.
  - Such tests are fragile, where trivial changes in the HTML that do not impact the final display can still break the test.
  - Naïve approaches fail to functionally test JavaScript code, as they tend to compare the JS code letter by letter against an expected code base, which is not a practical measure of functionality.

- **Selenium's Approach**: Selenium addresses these problems by treating web applications not as plain text but rather at a semantic level. It provides APIs for parsing HTML into a tree data structure, searching it, and emulating user interactions like clicks or typing. This allows for testing the functionality of web applications, including the dynamic aspects handled by JavaScript, in a more robust and maintainable manner.

### Locator Strings in Selenium

- **Multiple Locator Strings**: Selenium offers the option to select different locator strings for the same target element because web pages often change due to updates in content or design. Certain locator strings are more resilient to changes than others. For example, a unique ID locator remains reliable over time, but an XPath locator might need adjustments if the structure of the HTML changes. This flexibility allows testers to choose the most stable locator strategy for each element, enhancing test reliability.

### Race Conditions and Their Mitigation

- **Race Conditions**: Race conditions occur when the outcome of a test depends on the sequence or timing of other uncontrollable events. They are common in asynchronous operations and dynamic content loading in web applications, leading to flaky tests where the result might pass or fail unpredictably on different runs.

- **Solving Race Conditions**: To solve race conditions, Selenium tests can be designed to wait explicitly for certain conditions to be met before proceeding with the test steps. This could involve waiting for elements to become visible, for AJAX calls to complete, or for specific content to appear on the page. Implementing explicit waits helps ensure that the web application is in the expected state before the test interacts with it, thereby reducing flakiness caused by race conditions.
