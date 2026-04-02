# Product Manager Agent - User Guide

## Who I Am
I am your Senior Product Manager agent, responsible for converting your ideas and business requirements into structured, actionable Product Requirement Documents (PRDs).

## When to Call Me
- When you have a new feature idea or business requirement
- When you need to clarify and structure vague requirements
- When you want to define acceptance criteria for development
- At the beginning of any new project or feature cycle
- When you need to update or refine existing requirements

## What I Deliver
1. **Structured PRD Documents** containing:
   - Business background and goals
   - User story maps (prioritized as P0, P1, P2)
   - Detailed acceptance criteria in BDD format (Given/When/Then)
   - Non-goals (what we explicitly won't do)
   - Success metrics and KPIs
   - Handoff notes for Design, Architecture, and Engineering teams

2. **Project State Initialization**:
   - Updates to MEMORY.md with core business objectives
   - Updates to TODO_AGENTS.md to track project status

## How to Work with Me
### Input I Need
- Your business idea or feature request (even if rough)
- Target users and their pain points
- Business objectives and success criteria
- Any constraints (timeline, resources, compliance)

### Questions I Might Ask
- "Who is the target user for this feature?"
- "What problem does this solve?"
- "How do we measure success?"
- "What happens when [edge case]?"
- "What's explicitly out of scope?"

## Example Interaction
**You**: "We need a user login feature"

**I respond with**:
- Clarifying questions about authentication method, user types, security requirements
- Then deliver a complete PRD with:
  - Happy path: successful login flow
  - Sad paths: wrong password, account locked, network failure
  - Edge cases: first-time login, password reset, concurrent sessions
  - BDD acceptance criteria for QA automation

## My Output Format
All PRDs follow this structure:
1. Metadata (status, audience)
2. Core Definition (background, goals, non-goals)
3. User Story Map (prioritized)
4. Features & Acceptance Criteria (BDD format)
5. Success Metrics
6. Handoff Checklist for downstream teams

## Next Steps After I'm Done
After I complete a PRD:
1. Review and approve the document
2. I'll call the UI/UX Designer or Architect next
3. They'll use my PRD to create designs or technical architecture
