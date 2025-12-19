# System Architecture

## Overview
The USH BRIDGE Consults database system is built using Oracle Database with a
pluggable database (PDB) architecture. The system follows a layered design
that separates data storage, business logic, and analytics.

---

## Architecture Layers

### 1. Data Layer
This layer consists of relational tables that store core business data:
- Clients
- Projects
- Designs
- Sales
- Team Members
- Holidays
- Audit Logs

All tables are normalized to Third Normal Form (3NF) to ensure data integrity
and reduce redundancy.

---

### 2. Business Logic Layer
This layer is implemented using PL/SQL and includes:
- Procedures for data manipulation
- Functions for validation and calculations
- Packages for grouping related logic
- Triggers to enforce business rules

Key business rules include restricting data modifications by designers on
weekdays and public holidays.

---

### 3. Security & Auditing Layer
Security and accountability are enforced through:
- Triggers that block unauthorized actions
- Audit logging of all INSERT, UPDATE, and DELETE attempts
- Clear error messages for denied actions

This ensures transparency and compliance with organizational policies.

---

### 4. Analytics & BI Layer
This layer supports decision-making using:
- Analytical SQL queries
- Window functions
- KPI definitions
- Dashboard mockups

The database is designed to be BI-ready and supports future integration with
BI tools.

---

## Technology Choice
Oracle Database was chosen due to its strong support for:
- PL/SQL programming
- Triggers and auditing
- Window functions
- Enterprise-grade security
