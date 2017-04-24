## Overtime App
> Developed in the Professional Ruby on Rails Coding course by Jordan Hudgens

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- AuditLog

## Features:
- Approval Workflow
    1. Status to post
    2. Status: required
    3. Status: default
    4. Implement approval stages
    5. locking
- SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to manager for approval
- Needs to be documented if employee did not log overtime

## Refactor TODOS: