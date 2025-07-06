# QA Testing

QA testing provides stakeholders with valuable insights into the quality and performance of software applications. It helps identify defects, ensure compliance with requirements, and improve user satisfaction. Ensure the quality of the software and the business requirements, ultimately satisfying the end users.

There are two types of QA testing: manual and automated.

## Manual Testing
Manual testing involves human testers who execute test cases without the use of automation tools. This type of testing is essential for exploratory, usability, and ad-hoc testing where human intuition and experience are crucial.

Types of Testing in Manual QA:  

- 🔎 Exploratory Testing  
- 📋 Test Case Execution  
- 🧪 Usability Testing  
- 📱 Cross-browser & Cross-device Testing  
- 🎯 Ad-hoc Testing

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
  - Clicks buttons randoml
  - Inputs strange values
  - Navigates quickly between screens
  - Forces edge cases (e.g., log in with no internet)

It’s often based on gut feeling and past experience.

💡 When to use:
  - During last-minute checks
  - After code merges
  - For bug triaging and smoke testing

Tools:  

  - TestRail
  - Jira
  - Postman (for API manual testing)
  - Excel/Google Sheets
  - Browser dev tools

## Automated Testing
Automated testing uses software tools to run tests on the application. It is efficient for regression testing
and repetitive tasks, allowing for faster execution and more consistent results. Automated tests can be written in various programming languages and frameworks, such as Selenium for web applications or JUnit for Java applications.
