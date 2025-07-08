# QA Testing

QA uses the __STLC__ model to ensure the quality and performance of software applications.

QA testing provides stakeholders with valuable insights into the quality and performance of software applications. It helps identify defects, ensure compliance with requirements, and improve user satisfaction. Ensure the quality of the software and the business requirements, ultimately satisfying the end users.

There are two types of QA testing: manual and automated.

## Manual Testing

Manual testing is different from User Testing. User testing involves real users testing the application to provide feedback on usability, functionality, and overall user experience. It focuses on how users interact with the application in real-world scenarios. They worry less about the technical aspects and more about the user experience.

Manual testing involves human testers who execute test cases without the use of automation tools. This type of testing is essential for exploratory, usability, and ad-hoc testing where human intuition and experience are crucial.

Types of Testing in Manual QA:  

- 🔎 Exploratory Testing  
- 📋 Test Case Execution  
- 🧪 Usability Testing  
- 📱 Cross-browser & Cross-device Testing  
- 🎯 Ad-hoc Testing
- 🌪️ Smoke Testing
- 🧑‍🤝‍🧑 P2P Testing (peer to peer)

### Exploratory Testing
Exploratory testing is an informal testing approach where testers explore the application without predefined test cases. It allows for discovering defects that may not be captured in scripted tests.

🧠 Goal:
  - Discover unexpected bugs or edge cases
  - Test features from a real user perspective
  - Quickly learn how a new system behaves

🛠 Example:
  - You're testing a new chat app. Instead of following a step-by-step checklist, you:
  - Open multiple chats
  - Switch networks mid-message
  - Send huge files
  - Try weird characters (e.g., emojis, scripts)
  - Navigate backward/forward rapidly

💡 When to use:
  - Early in development
  - When documentation is lacking
  - When validating new features

### Test Case Execution
Test case execution involves running predefined test cases to verify that the application behaves as expected. Test cases are designed based on requirements and specifications.

🧠 Goal:
Verify known functionality works as expected

Ensure requirements are met

Provide consistent, repeatable test coverage

🛠 Example:
For a login form, a test case might be:
  - Open the login page
  - Enter valid credentials
  - Click "Login"
  - Assert you’re redirected to the dashboard
  - If one step fails, the case fails, and a bug is reported.

💡 When to use:
  - During regression testing
  - After feature development
  - To verify bug fixes
  - When compliance and traceability are required

### Usability Testing

Usability testing evaluates how user-friendly and intuitive the application is. It focuses on the user experience, ensuring that the application is easy to navigate and understand.

🧠 Goal:
  - Identify confusing workflows
  - Spot UI/UX design flaws
  - Understand how real users behave

🛠 Example:
  - You're testing a signup process:
  - Is the "Sign Up" button easy to find?
  - Are error messages clear and helpful?
  - Does the form feel overwhelming?
  - Do users abandon the process halfway through?
  - This is often done by asking users (or QA testers) to complete tasks and give feedback.

💡 When to use:
  - During UI design reviews
  - Before a product launch
  - In collaboration with designers and product managers

### Cross-browser & Cross-device Testing
Cross-browser and cross-device testing ensure that the application works correctly across different web browsers and devices.

🧠 Goal:
  - Catch UI bugs or layout issues
  - Verify feature compatibility
  - Ensure good mobile responsiveness

🛠 Example:
  - You test a shopping cart feature on:
  - Chrome (desktop, latest)
  - Firefox (older version)
  - Safari on iPhone
  - Android tablet
  - Edge on Windows

> You might find that a button works in Chrome but not on Safari, or a layout breaks on smaller screens.

💡 When to use:
  - Before releases
  - When adding frontend features
  - When working with responsive designs

### Ad-hoc Testing
Ad-hoc testing is an informal testing approach where testers explore the application without any formal test cases or documentation. It is often used to quickly identify defects in the application.

🧠 Goal:
  - Quickly identify glaring issues
  - Perform one-off checks
  - Complement structured testing

🛠 Example:
  - After a new feature is deployed to staging, 
  the tester plays around with it freely:
  - Clicks buttons randomly
  - Inputs strange values
  - Navigates quickly between screens
  - Forces edge cases (e.g., log in with no internet)

It’s often based on gut feeling and past experience.

💡 When to use:
  - During last-minute checks
  - After code merges
  - For bug triaging and smoke testing

### Smoke Testing
Smoke testing is a preliminary test to check the basic functionality of the application. It is often performed after a new build or deployment to ensure that the critical features are working as expected.

🧠 Goal:
- Quickly verify core functionality
- Ensure the build is stable enough for further testing

🛠 Example:
- You test a login feature:
- Enter valid credentials
- Click "Login"
- Assert you’re redirected to the dashboard

💡 When to use:
- After a new build is deployed
- Before running more extensive tests like regression testing
- To verify bug fixes

Tools:  

  - TestRail (for test case management)
  - Jira (for bug tracking, validate test cases and workflows)
  - Postman (for API manual testing)
  - Excel/Google Sheets (for simple test case tracking)
  - Browser dev tools

## Jira 

__Jira__ is a popular project management and issue tracking tool. It is often used for QA testing.

__Xray__ is a sub-tool of Jira that provides a more detailed view of the issues and their history. It enables software teams to plan, execute, and track tests within Jira. It also provides a way to link test cases to requirements (traceability) and defects, making it easier to manage the testing process.


## Automated Testing
Automated testing uses software tools to run tests on the application. It is efficient for regression testing
and repetitive tasks, allowing for faster execution and more consistent results. Automated tests can be written in various programming languages and frameworks, such as Selenium for web applications or JUnit for Java applications.

Types of Testing in Automated QA:
- 🧪 Unit Testing
- 📦 Integration Testing
- 🧪 Functional Testing


### Unit Testing

- Test individual units/components of code in isolation.
- Validate the logic, algorithms, and expected outputs.

For JS, we use Jest or Mocha to test individual functions or components.
For Java, we use JUnit or TestNG.

Jest is installed through npm and is used to run tests on JavaScript code. It provides a simple and easy-to-use API for writing tests. `npm install -D jest`

Update the package.json file to include a test script:
```json
"scripts": {
  "test": "jest"
}
```

Run the tests with `npm run test`

```js
// sum.js
function sum(a, b) {
  return a + b;
}

module.exports = sum;
```

```js
// sum.test.js
const sum = require('./sum');

test('adds 1 + 2 to equal 3', () => {
  expect(sum(1, 2)).toBe(3);
});

test('adds -5 + 5 to equal 0', () => {
  expect(sum(-5, 5)).toBe(0);
});

test('adds 0 + 0 to equal 0', () => {
  expect(sum(0, 0)).toBe(0);
});

```