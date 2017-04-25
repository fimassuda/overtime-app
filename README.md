## Overtime App
> Developed in the Professional Ruby on Rails Coding course by Jordan Hudgens

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Features:
- x Approval Workflow
- x SMS Sending -> link to approval or overtime input -> Integrate with heroku scheduler
- x Administrate admin dashboard
- x Block non admin and guest users
- x Email summary to manager for approval
- x Needs to be documented if employee did not log overtime
- x Create audit log for each text message
- Need to update end date when confirmed
- Need to update audit log status when an overtime is rejected
- Update button on employee homepage so they show on mobile
- Update buttons to include time span
- Update button sort on employee homepage
- Remove unnecessary nav bar buttons for managers
- Fix admin dashboard bug
- Implement honeybadger for error reporting
- Implement new relic to keep site alive

## TODOS: