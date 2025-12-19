# Design Decisions

This document explains the key design choices made during the development
of the USH BRIDGE Consults database system.

---

## Database Design
The database was designed using a relational model and normalized to
Third Normal Form (3NF). This reduces data redundancy and ensures data
consistency across the system.

Separate tables were created for Clients, Projects, Designs, Sales,
and Team Members to clearly represent real-world entities.

---

## Use of Oracle PL/SQL
PL/SQL was chosen to implement business logic because it allows logic
to be enforced directly at the database level. This ensures rules are
applied consistently regardless of the application accessing the database.

---

## Business Rule Enforcement
A key business rule restricts designers from inserting, updating, or deleting
data on weekdays and public holidays. This rule was implemented using:
- A holidays table
- A restriction check function
- A compound trigger

This approach ensures both flexibility and performance.

---

## Auditing Strategy
An audit log table was implemented to record all data modification attempts.
Auditing was centralized using a reusable audit logging function to avoid
code duplication and improve maintainability.

Both allowed and denied actions are logged to provide full accountability.

---

## Analytics and BI Design
The database schema was designed with analytics in mind. Sales data is
structured to support aggregations, trends, and window functions.

KPIs and dashboard mockups were defined to demonstrate how data can support
management decision-making.

---

## Scalability Considerations
The system is designed to be extensible. Additional tables, users, and BI
tools can be integrated without major schema changes.
