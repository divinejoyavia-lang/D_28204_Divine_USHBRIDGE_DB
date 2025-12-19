# Data Dictionary

This document describes all tables, columns, data types, and constraints
used in the USH BRIDGE Consults database system.

---

## Table: CLIENTS

| Column Name | Data Type | Constraints | Description |
|------------|----------|-------------|-------------|
| CLIENT_ID | NUMBER | PK, NOT NULL | Unique client identifier |
| NAME | VARCHAR2 | NOT NULL | Client name |
| INDUSTRY | VARCHAR2 | | Client business sector |
| CONTACT_INFO | VARCHAR2 | NOT NULL | Phone or email contact |
| CLIENT_TYPE | VARCHAR2 | CHECK | Architecture, Branding, or Both |

---

## Table: PROJECTS

| Column Name | Data Type | Constraints | Description |
|------------|----------|-------------|-------------|
| PROJECT_ID | NUMBER | PK, NOT NULL | Unique project identifier |
| TITLE | VARCHAR2 | NOT NULL | Project title |
| PROJECT_TYPE | VARCHAR2 | NOT NULL | Architecture or Branding |
| START_DATE | DATE | NOT NULL | Project start date |
| END_DATE | DATE | | Project end date |
| BUDGET | NUMBER | | Project budget |
| PROJECT_STATUS | VARCHAR2 | NOT NULL | Pending, Active, Completed |
| CLIENT_ID | NUMBER | FK | References CLIENTS |

---

## Table: DESIGNS

| Column Name | Data Type | Constraints | Description |
|------------|----------|-------------|-------------|
| DESIGN_ID | NUMBER | PK, NOT NULL | Unique design identifier |
| DESIGN_TYPE | VARCHAR2 | NOT NULL | Architectural or Graphic |
| PROJECT_ID | NUMBER | FK | References PROJECTS |

---

## Table: SALES

| Column Name | Data Type | Constraints | Description |
|------------|----------|-------------|-------------|
| SALE_ID | NUMBER | PK, NOT NULL | Unique sale identifier |
| PROJECT_ID | NUMBER | FK, NOT NULL | Related project |
| CLIENT_ID | NUMBER | FK, NOT NULL | Paying client |
| DESIGN_ID | NUMBER | FK | Related design |
| AMOUNT | NUMBER(12,2) | NOT NULL | Payment amount |
| ISSUED_DATE | DATE | | Date of payment |

---

## Table: TEAMMEMBERS

| Column Name | Data Type | Constraints | Description |
|------------|----------|-------------|-------------|
| TEAM_ID | NUMBER | PK, NOT NULL | Team member identifier |
| NAME | VARCHAR2 | NOT NULL | Member name |
| ROLE | VARCHAR2 | NOT NULL | Architect, Designer, Consultant |
| PROJECT_ID | NUMBER | FK | Assigned project |

---

## Table: HOLIDAYS

| Column Name | Data Type | Constraints | Description |
|------------|----------|-------------|-------------|
| HOLIDAY_ID | NUMBER | PK, NOT NULL | Holiday identifier |
| HOLIDAY_DATE | DATE | UNIQUE, NOT NULL | Public holiday date |
| DESCRIPTION | VARCHAR2 | | Holiday description |

---

## Table: AUDIT_LOG

| Column Name | Data Type | Constraints | Description |
|------------|----------|-------------|-------------|
| AUDIT_ID | NUMBER | PK, NOT NULL | Audit record ID |
| USERNAME | VARCHAR2 | NOT NULL | Database user |
| ACTION_TYPE | VARCHAR2 | NOT NULL | INSERT, UPDATE, DELETE |
| TABLE_NAME | VARCHAR2 | NOT NULL | Affected table |
| ACTION_DATE | DATE | NOT NULL | Action timestamp |
| ACTION_STATUS | VARCHAR2 | NOT NULL | ALLOWED or DENIED |
| REMARKS | VARCHAR2 | | Action notes |
