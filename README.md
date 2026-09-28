# Robot Framework E-Commerce Web Automation

## Project
Capstone Assignment 4: Robot Framework Web Automation Project

## Application
Demo Web Shop: https://demowebshop.tricentis.com/

> Note: The demo website may change over time. Update locators in the page resource files if required.

## Features Covered
- Robot Framework basics
- SeleniumLibrary
- Keyword-driven testing
- Data-driven testing
- Resource files
- User-defined keywords
- Setup and teardown
- Page Object Model concept
- Command-line execution
- HTML reporting
- Jenkins execution guidance
- Screenshots on failure

## Prerequisites
- Python 3.10+
- Google Chrome
- ChromeDriver available in PATH, or Selenium Manager support through SeleniumLibrary/Selenium
- Java is required only if using a local Jenkins installation

## Installation

```bash
python -m venv .venv
```

Windows:
```bash
.venv\Scripts\activate
```

Linux/macOS:
```bash
source .venv/bin/activate
```

Install dependencies:
```bash
pip install -r requirements.txt
```

## Run Tests

Run all tests:
```bash
robot -d results tests
```

Run only login tests:
```bash
robot -d results -i login tests
```

Run product/cart tests:
```bash
robot -d results -i cart tests
```

Run in headless mode:
```bash
robot -d results -v HEADLESS:true tests
```

Run with a custom browser:
```bash
robot -d results -v BROWSER:firefox tests
```

## Reports
After execution, open:
- results/report.html
- results/log.html
- results/output.xml

## Project Structure

```text
RobotFramework_Ecommerce_Automation/
├── config/
│   └── config.robot
├── data/
│   └── test_data.csv
├── keywords/
│   ├── common_keywords.robot
│   ├── login_keywords.robot
│   └── product_keywords.robot
├── pages/
│   ├── cart_page.robot
│   ├── home_page.robot
│   ├── login_page.robot
│   └── product_page.robot
├── tests/
│   └── ecommerce_tests.robot
├── libraries/
│   └── screenshot_listener.py
├── Jenkinsfile
├── requirements.txt
└── README.md
```

## Test Credentials

The Demo Web Shop site requires a registered account. Update `data/test_data.csv` with valid credentials before executing the login and cart tests.

## RIDE IDE
1. Install RIDE:
   ```bash
   pip install robotframework-ride
   ```
2. Open the project folder in RIDE.
3. Open `tests/ecommerce_tests.robot`.
4. Execute the suite from RIDE.

## Jenkins
Create a Pipeline job and configure it to use the included `Jenkinsfile`.

The Jenkins agent must have:
- Python
- Google Chrome
- Required Python packages
- Robot Framework

## Important
This project demonstrates the requested architecture. Website locators and user credentials may need updates if the demo website changes.


## Author

**Prantik Paul**

B.Tech — Computer Science & Technology  
Institute of Engineering & Management, Kolkata
