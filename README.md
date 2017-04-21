## Overtime App
> Developed in the Professional Ruby on Rails Coding course by Jordan Hudgens

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
X Post -> date:date rationale:text
X User -> Devise
X AdminUser -> STI

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to manager for approval
- Needs to be documented if employee did not log overtime

## UI:
- Bootstrap -> formatting

## Refactor TODOS:
- Refactor user association integration test in post_spec
- Add a full name for users