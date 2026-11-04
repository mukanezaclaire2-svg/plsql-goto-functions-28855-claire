# plsql-goto-functions-28855-claire
assignment III
# Individual Assignment III: PL/SQL GOTO Statements and Functions

## 1. Student Information

| Description | Details |
|---|---|
| Student Name | MUKANEZA Claire |
| Student ID | 28855 |
| Assignment | Individual Assignment III |
| Course | PL/SQL Programming |
| Database | Oracle Database 21c XE |
| Development Tool | Oracle SQL Developer |
| Repository Visibility | Public |

---

## 2. Introduction

This project demonstrates practical applications of PL/SQL GOTO statements, stored functions, exception handling, and functions used in SQL queries.

The assignment was implemented using Oracle Database 21c Express Edition and Oracle SQL Developer.

A sample Employee Management Database was created to demonstrate salary calculations, years of service, tax calculations, department information, and payroll validation.

## 3. Assignment Objectives

The main objectives are:

- Understand and implement PL/SQL GOTO statements.
- Identify illegal GOTO statements and correct them.
- Rewrite programs without using GOTO.
- Create and execute stored PL/SQL functions.
- Implement exception handling.
- Use stored functions inside SQL SELECT statements.
- Validate employee payroll information.
- Organize and document database projects using GitHub.

## 4. Database Design

The project uses two main database tables:

### DEPARTMENTS

| Department ID | Department Name |
|---|---|
| 10 | IT |
| 20 | FINANCE |
| 30 | HR |
| 40 | MARKETING |

### EMPLOYEES

| Employee ID | Employee Name | Salary (RWF) | Department ID |
|---|---|---:|---|
| 101 | Alice | 450,000 | 10 |
| 102 | David | 600,000 | 20 |
| 103 | Grace | 350,000 | 30 |
| 104 | John | 800,000 | 10 |
| 105 | Peter | 500,000 | 40 |

Database setup files are located in `00_setup/`.

## 5. Part A: GOTO Statements

### A1 – Number Classifier

File: `01_goto/A1_number_classifier.sql`

Uses GOTO statements to classify a number as positive, negative, or zero.

**Test result:**
```text
Number: 25
Classification: Positive number
```

### A2 – Salary Review

File: `01_goto/A2_salary_review.sql`

Uses GOTO statements to classify employee salary into high, medium, or low salary categories.

**Test result:**
```text
Salary: 600000 RWF
Review: Medium salary - Good
```

### A3 – Illegal GOTO and Fix

File: `01_goto/A3_illegal_goto.sql`

Demonstrates an illegal GOTO statement and how to correct it.

The illegal GOTO produced:
```text
PLS-00375: illegal GOTO statement
```

After correction:
```text
GOTO was fixed successfully.
```

### A4 – Rewrite Without GOTO

File: `01_goto/A4_rewrite_no_goto.sql`

Rewrites the number classification program using IF, ELSIF, and ELSE instead of GOTO.

**Test result:**
```text
Number: -15
Classification: Negative number
```

## 6. Part B: Stored Functions

### B1 – Annual Salary

File: `02_functions/B1_fn_annual_salary.sql`

Function: `fn_annual_salary`

Calculates annual salary from monthly salary.

Example:
```text
Monthly Salary: 450000
Annual Salary: 5400000
```

### B2 – Years of Service

File: `02_functions/B2_fn_years_of_service.sql`

Function: `fn_years_of_service`

Calculates the number of complete years an employee has worked.

Example:
```text
Hire Date: 15-MAR-2022
Years of Service: 4
```

### B3 – Tax Calculator

File: `02_functions/B3_fn_calculate_tax.sql`

Function: `fn_calculate_tax`

Calculates tax using the salary rules defined for this assignment.

| Salary Range | Tax Rate |
|---|---:|
| 300,000 or below | 0% |
| Above 300,000 to 600,000 | 10% |
| Above 600,000 | 20% |

Examples:
```text
Salary: 500000
Tax: 50000

Salary: 800000
Tax: 160000
```

### B4 – Department Name

File: `02_functions/B4_fn_dept_name.sql`

Function: `fn_dept_name`

Returns a department name using its department ID.

Examples:
```text
10 → IT
20 → FINANCE
30 → HR
40 → MARKETING
99 → Unknown Department
```

The function uses exception handling to handle departments that do not exist.

## 7. B5 – Functions Used in SQL

File: `03_tests/B5_functions_in_select.sql`

Demonstrates how stored functions can be called directly inside SQL SELECT statements.

The following functions were tested:

- `fn_annual_salary()`
- `fn_years_of_service()`
- `fn_calculate_tax()`
- `fn_dept_name()`

The queries successfully returned employee annual salaries, years of service, taxes, and department names.

## 8. Part C – Combined Task

### C1 – Payroll Validator

Function file: `02_functions/C1_fn_validate_payroll.sql`

Test file: `03_tests/test_validate_payroll.sql`

Function: `fn_validate_payroll`

Validates employee payroll information and returns an appropriate status.

The function checks whether:
- The employee exists.
- The salary is greater than zero.
- The salary meets the minimum level defined in the assignment.

It also handles exceptions using `NO_DATA_FOUND` and `WHEN OTHERS`.

**Test results:**
```text
VALID: Payroll is acceptable
ERROR: Employee not found
```

### C2 – Reflection

File: `docs/REFLECTION.md`

Contains a reflection on the concepts learned, challenges encountered, solutions implemented, and practical skills gained during the assignment.

## 9. Repository Structure

```text
plsql-goto-functions-28855-claire/
│
├── README.md
├── .gitignore
│
├── 00_setup/
│   └── create_tables.sql
│
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
│
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
│
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
│
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
│
└── docs/
    └── REFLECTION.md
```

## 10. How to Run the Project

Follow these steps to execute the project in Oracle SQL Developer:

1. Connect to Oracle Database 21c XE.
2. Run `00_setup/create_tables.sql`.
3. Compile all functions inside `02_functions/`.
4. Run the GOTO programs inside `01_goto/`.
5. Execute the tests inside `03_tests/`.
6. Verify the outputs.
7. Review the screenshots inside `screenshots/`.

**Important:** The functions must be compiled before running the test scripts that use them.

## 11. Screenshots

The `screenshots/` folder contains evidence of the practical work, including:

- Number classification output.
- Salary review output.
- Illegal GOTO error and correction.
- Number classification without GOTO.
- Functions used in SQL queries.
- Payroll validation results.

## 12. Challenges and Solutions

| Challenge | Solution |
|---|---|
| Illegal GOTO statement | Corrected the label location. |
| Existing database object | Checked and reused the existing department table. |
| Missing department | Used NO_DATA_FOUND exception handling. |
| Missing employee | Handled the exception in the payroll validator. |
| Testing stored functions | Used SQL SELECT statements and PL/SQL test blocks. |

## 13. Conclusion

This assignment improved my practical understanding of PL/SQL programming, GOTO statements, stored functions, SQL queries, and exception handling.

I successfully created and tested different PL/SQL programs using an employee management database.

The project also improved my skills in database organization, testing, documentation, and GitHub repository management.

## 14. Submission Information

- **Repository Name:** `plsql-goto-functions-28855-claire`
- **Student Name:** Claire
- **Student ID:** 28855
- **Repository Visibility:** Public
- **Submission Method:** Google Form
- **Repository URL:** Add the actual GitHub repository link here.

---

**End of Assignment III Documentation**
