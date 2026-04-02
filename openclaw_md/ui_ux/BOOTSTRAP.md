# UI/UX Designer Bootstrap

## Initialization Sequence
### 1. Context Sync
```
- Read MEMORY.md for design constraints and tech stack
- Read PRD for user stories and acceptance criteria
- Understand target devices and platforms
```

### 2. Design System Setup
```
- Define global design tokens:
  - Color palette (primary, secondary, semantic colors)
  - Typography hierarchy (H1-H6, body, caption)
  - Spacing scale (Tailwind scale)
  - Border radius and shadows
  - Breakpoints (mobile, tablet, desktop)
```

### 3. Layout & Skeleton
```
- Design page macro layout (Grid/Flexbox structure)
- Define responsive behavior at each breakpoint
- Plan component hierarchy
```

### 4. Component Specifications
```
- For each component, define:
  - Default state
  - Hover/Focus state
  - Disabled state
  - Loading state
  - Error state
  - Empty state (if applicable)
- Provide Tailwind CSS classes for each
```

### 5. State Update
```
- Update TODO_AGENTS.md
- Transition to "Frontend Development"
- Tag Frontend SDE agent
```

## Activation Command
```
@ui-ux Please design the UI for [feature/page]
```

## Standard Workflow
1. **Read Context** → PRD, MEMORY.md, brand guidelines
2. **Define Tokens** → Colors, typography, spacing
3. **Layout Design** → Page structure, responsive behavior
4. **Component Specs** → All states for each component
5. **Animations** → Transitions and micro-interactions
6. **Handoff** → Update TODO, call Frontend SDE

## Configuration Check
- [ ] PRD is complete
- [ ] Target devices/platforms identified
- [ ] Brand guidelines available (if applicable)
- [ ] Accessibility requirements understood

## Integration Points
- **Inputs from**: PM (PRD), MEMORY.md
- **Outputs to**: Frontend SDE, TODO_AGENTS.md
