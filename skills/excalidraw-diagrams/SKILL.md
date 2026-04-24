---
name: excalidraw-diagrams
description: "Generate valid Excalidraw JSON for architecture diagrams, flowcharts, decision trees, sequence diagrams, and mind maps. Paste output directly into excalidraw.com. Supports auto-layout with collision-free node positioning, styled connectors, color themes, and grouping. Use when the user wants to visualize systems, flows, decisions, processes, relationships, or hierarchies. Also use when user says 'draw a diagram,' 'make a flowchart,' 'architecture diagram,' 'decision tree,' 'sequence diagram,' 'mind map,' 'visualize this,' or 'excalidraw.'"
argument-hint: "[diagram-type] [description]"
metadata:
  author: najib
  version: 1.0.0
---

# Excalidraw Diagram Generator

Generate valid Excalidraw JSON that can be pasted directly into excalidraw.com. Supports architecture diagrams, flowcharts, decision trees, sequence diagrams, and mind maps with automatic non-overlapping layout.

## When to Use

- Architecture diagrams (system components, services, databases, APIs)
- Flowcharts (process flows, user journeys, business logic)
- Decision trees (if/then logic, approval workflows, troubleshooting)
- Sequence diagrams (API calls, message passing, event flows)
- Mind maps (brainstorming, topic exploration, feature breakdown)
- Any time the user wants a visual representation of relationships or flows

## Before Generating

Gather from the user (ask if not provided):

1. **Diagram type** -- architecture, flowchart, decision tree, sequence, or mind map
2. **Nodes/entities** -- what boxes, circles, or shapes to include
3. **Connections** -- how things connect, which direction, labels on arrows
4. **Emphasis** -- any nodes that are more important (highlighted, larger)
5. **Color theme** -- default is clean/professional; user may want branded colors

If the user gives a loose description ("draw how our API works"), extract the entities and relationships yourself. Do not ask excessive clarifying questions.

---

## Diagram Types and Layout Strategies

### Architecture Diagram
- **Layout**: Left-to-right or top-to-bottom layered grid
- **Shapes**: Rectangles for services, cylinders for databases, clouds for external, rounded rectangles for APIs
- **Spacing**: 250px horizontal gap, 180px vertical gap minimum
- **Grouping**: Group related services with a light background rectangle behind them

### Flowchart
- **Layout**: Top-to-bottom, centered with branching
- **Shapes**: Rounded rectangles for actions, diamonds for decisions, ovals for start/end
- **Spacing**: 200px vertical gap between rows, 300px horizontal for branches
- **Branches**: Yes/No paths from diamonds go left/right, then rejoin below

### Decision Tree
- **Layout**: Top-to-bottom binary tree
- **Shapes**: Diamonds for questions, rectangles for outcomes
- **Spacing**: Double horizontal spacing at each depth level to prevent overlap
- **Depth formula**: `x_offset = base_x + (index - midpoint) * (400 / depth_level)`

### Sequence Diagram
- **Layout**: Participants across the top, messages descending vertically
- **Shapes**: Rectangles for participants at top, vertical dashed lines (thin rectangles), arrows for messages
- **Spacing**: 300px between participants, 80px between message rows
- **Labels**: Message labels on arrows, numbered if requested

### Mind Map
- **Layout**: Central node with radial branches
- **Shapes**: Rounded rectangle center, ellipses for branches
- **Spacing**: Radial positioning using angle = (2 * PI * index) / count, radius 300px per depth level
- **Depth**: Max 3 levels recommended for readability

---

## Excalidraw JSON Structure

Every output must be a complete, valid Excalidraw JSON object:

```json
{
  "type": "excalidraw",
  "version": 2,
  "source": "claude-code",
  "elements": [...],
  "appState": {
    "viewBackgroundColor": "#ffffff",
    "gridSize": 20
  },
  "files": {}
}
```

### Element Schema (Rectangle Example)

```json
{
  "id": "unique-id-1",
  "type": "rectangle",
  "x": 100,
  "y": 100,
  "width": 200,
  "height": 80,
  "angle": 0,
  "strokeColor": "#1e1e1e",
  "backgroundColor": "#a5d8ff",
  "fillStyle": "solid",
  "strokeWidth": 2,
  "strokeStyle": "solid",
  "roughness": 1,
  "opacity": 100,
  "groupIds": [],
  "frameId": null,
  "roundness": { "type": 3 },
  "seed": 1234567890,
  "version": 1,
  "versionNonce": 1234567890,
  "isDeleted": false,
  "boundElements": [
    { "id": "arrow-1", "type": "arrow" }
  ],
  "updated": 1700000000000,
  "link": null,
  "locked": false
}
```

### Element Schema (Text Example)

```json
{
  "id": "text-1",
  "type": "text",
  "x": 120,
  "y": 120,
  "width": 160,
  "height": 40,
  "text": "API Gateway",
  "fontSize": 20,
  "fontFamily": 1,
  "textAlign": "center",
  "verticalAlign": "middle",
  "angle": 0,
  "strokeColor": "#1e1e1e",
  "backgroundColor": "transparent",
  "fillStyle": "solid",
  "strokeWidth": 2,
  "strokeStyle": "solid",
  "roughness": 1,
  "opacity": 100,
  "groupIds": [],
  "frameId": null,
  "roundness": null,
  "seed": 2345678901,
  "version": 1,
  "versionNonce": 2345678901,
  "isDeleted": false,
  "boundElements": null,
  "updated": 1700000000000,
  "link": null,
  "locked": false,
  "containerId": "unique-id-1"
}
```

### Element Schema (Arrow Example)

```json
{
  "id": "arrow-1",
  "type": "arrow",
  "x": 300,
  "y": 140,
  "width": 150,
  "height": 0,
  "angle": 0,
  "strokeColor": "#1e1e1e",
  "backgroundColor": "transparent",
  "fillStyle": "solid",
  "strokeWidth": 2,
  "strokeStyle": "solid",
  "roughness": 1,
  "opacity": 100,
  "groupIds": [],
  "frameId": null,
  "roundness": { "type": 2 },
  "seed": 3456789012,
  "version": 1,
  "versionNonce": 3456789012,
  "isDeleted": false,
  "boundElements": null,
  "updated": 1700000000000,
  "link": null,
  "locked": false,
  "points": [[0, 0], [150, 0]],
  "lastCommittedPoint": null,
  "startBinding": {
    "elementId": "unique-id-1",
    "focus": 0,
    "gap": 1
  },
  "endBinding": {
    "elementId": "unique-id-2",
    "focus": 0,
    "gap": 1
  },
  "startArrowhead": null,
  "endArrowhead": "arrow"
}
```

### Shape Types

| Type | Excalidraw `type` | Use For |
|------|-------------------|---------|
| Rectangle | `rectangle` | Services, components, actions |
| Rounded Rectangle | `rectangle` + `roundness: {type: 3}` | APIs, user actions, processes |
| Diamond | `diamond` | Decisions, conditions |
| Ellipse | `ellipse` | Start/end, external entities |
| Arrow | `arrow` | Connections, data flow |
| Line | `line` | Grouping borders, separators |
| Text | `text` | Labels (standalone or inside containers) |

---

## Color Themes

### Professional (Default)
| Role | Background | Stroke |
|------|-----------|--------|
| Primary | `#a5d8ff` | `#1971c2` |
| Secondary | `#b2f2bb` | `#2f9e44` |
| Accent | `#ffec99` | `#e67700` |
| Warning/Error | `#ffc9c9` | `#c92a2a` |
| Neutral | `#e9ecef` | `#495057` |
| Database | `#d0bfff` | `#7048e8` |

### Monochrome
| Role | Background | Stroke |
|------|-----------|--------|
| Primary | `#dee2e6` | `#343a40` |
| Secondary | `#e9ecef` | `#495057` |
| Accent | `#ced4da` | `#212529` |

### Dark Mode
| Role | Background | Stroke |
|------|-----------|--------|
| Primary | `#1864ab` | `#a5d8ff` |
| Secondary | `#2b8a3e` | `#b2f2bb` |
| Accent | `#e67700` | `#ffec99` |

---

## Node Positioning Algorithm

### Anti-Overlap Rules

1. **No element may overlap another.** Every node's bounding box (x, y, width, height) must have clear space from all others.
2. **Minimum gap**: 40px between any two node edges.
3. **Text inside containers**: Text element x/y must be inset 20px from container edges.
4. **Arrow clearance**: Arrows start/end at container edges, not inside them.

### Grid-Based Positioning

For predictable layouts, use a virtual grid:

```
grid_cell_width = max_node_width + horizontal_gap   (e.g., 200 + 100 = 300)
grid_cell_height = max_node_height + vertical_gap    (e.g., 80 + 120 = 200)

node.x = col * grid_cell_width + left_margin
node.y = row * grid_cell_height + top_margin
```

### Centering Within Rows

When a row has fewer nodes than the row above, center them:

```
row_width = num_nodes * cell_width
start_x = (max_row_width - row_width) / 2 + left_margin
```

---

## ID Generation

Generate unique IDs using a deterministic pattern:

```
node-{type}-{index}     e.g., node-rect-1, node-diamond-3
text-{parent-index}     e.g., text-1, text-3
arrow-{from}-{to}       e.g., arrow-1-2, arrow-3-5
group-{name}            e.g., group-backend, group-frontend
```

Generate `seed` and `versionNonce` as random-looking 10-digit integers. Each element needs unique values.

---

## Output Format

Always output:

1. **A brief description** of the diagram (1-2 sentences)
2. **The complete JSON** in a code block labeled `json` -- ready to paste into excalidraw.com via clipboard import
3. **Paste instructions**: "Copy the JSON above. Open excalidraw.com, press Ctrl/Cmd+V, or use the menu: Open > Import from clipboard."

### Output Size Limits

- Keep diagrams under 30 elements for readability
- If the user describes a complex system with 30+ nodes, ask whether to show a high-level overview or a detailed section
- Prefer clarity over completeness -- a readable diagram beats a comprehensive one

---

## Constraints

- **Valid JSON only** -- output must parse without errors
- **All required fields present** -- missing fields cause import failures
- **Consistent bindings** -- if an arrow references a node in startBinding/endBinding, that node must list the arrow in its boundElements
- **No overlapping text** -- text inside containers must use `containerId`; standalone text must not overlap any shape
- **Readable font sizes** -- minimum 16px for labels, 20px for titles
- **Arrow points array** -- always relative to the arrow's x/y position (first point is [0,0])

---

## Examples of Good Requests

- "Draw an architecture diagram for a Next.js app with Supabase, Stripe, and Resend"
- "Flowchart for our customer onboarding process"
- "Decision tree for choosing between S3, R2, and GCS"
- "Sequence diagram showing how OAuth2 authorization code flow works"
- "Mind map of content marketing strategies"

---

## Related Skills

- **slides** -- for presentations with embedded diagrams
- **design** -- for branded visual assets
- **json-canvas** -- for Obsidian canvas files (different format)
