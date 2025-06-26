# CRM App Development Plan - Rails Learning Project

## Project Overview
Simple CRM application for learning Rails fundamentals with basic CRUD operations and table relationships.

**Tech Stack:**
- Rails 8.0.2
- Bootstrap 5 (UI Framework - Rails standard)
- Stimulus (JavaScript - Rails default)
- SQLite (Development database)
- Turbo (Rails default for SPA-like experience)

## Database Schema
```
Clients (customers/companies)
├── name, email, phone, address, notes
├── has_many contacts, opportunities, tasks

Contacts (people within clients)
├── name, email, phone, position
├── belongs_to client

Opportunities (sales opportunities)
├── title, description, value, status, close_date
├── belongs_to client
├── has_many tasks

Tasks (activities/to-dos)
├── title, description, due_date, status, priority
├── belongs_to client
├── belongs_to opportunity (optional)
```

## Development Tasks (Progressive Learning)

### Phase 1: Project Setup & Basic Structure
**Task 1.1:** Create new Rails application
- `rails new crm_app`
- Configure Bootstrap via CDN
- Set up basic layout with navigation

**Task 1.2:** Generate Client model and controller -> DONE
- Create Client model with basic fields
- Generate controller with index, show, new, create, edit, update, destroy
- Create basic views with Bootstrap styling
- Test CRUD operations

### Phase 2: Relationships & Navigation
**Task 2.1:** Generate Contact model -> DONE
- Create Contact model with client relationship
- Generate controller and views
- Implement nested routes (clients/:id/contacts)
- Add contacts section to client show page

**Task 2.2:** Generate Opportunity model
- Create Opportunity model with client relationship
- Generate controller and views
- Add opportunities section to client show page
- Implement status dropdown (Lead, Qualified, Proposal, Won, Lost)

### Phase 3: Advanced Relationships
**Task 3.1:** Generate Task model
- Create Task model with client and opportunity relationships
- Generate controller and views
- Implement priority levels (Low, Medium, High)
- Add task lists to client and opportunity pages

**Task 3.2:** Dashboard and Overview
- Create dashboard controller
- Build main dashboard with summary cards
- Show recent tasks, upcoming opportunities
- Add basic charts (optional, using Chart.js)

### Phase 4: UI Enhancement & Polish
**Task 4.1:** Improve Navigation & UX
- Add breadcrumbs navigation
- Implement search functionality for clients
- Add filters for opportunities by status
- Improve forms with better validation messages

**Task 4.2:** Responsive Design & Details
- Ensure mobile responsiveness
- Add confirmation dialogs for delete actions
- Implement flash messages styling
- Add pagination for large lists

## Learning Goals per Phase
- **Phase 1:** Rails MVC, routing, basic CRUD
- **Phase 2:** ActiveRecord associations, nested routes
- **Phase 3:** Complex relationships, joins, queries
- **Phase 4:** User experience, Rails helpers, Stimulus basics

## Bootstrap Components to Use
- Cards (for client/opportunity display)
- Tables (for listings)
- Forms (with validation styling)
- Buttons and badges
- Navigation bar
- Modal dialogs
- Alert messages

## Estimated Timeline
- Phase 1: 2-3 days
- Phase 2: 2-3 days  
- Phase 3: 2-3 days
- Phase 4: 1-2 days

**Total: ~1-2 weeks of learning**

## Next Steps
1. Start with Task 1.1 - Create the Rails application
2. Focus on one task at a time
3. Test each feature before moving to the next
4. Ask for help when stuck on any specific task

Ready to start with the first task?
