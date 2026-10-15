# plepic-plugin-marketplace

A Claude Code plugin marketplace. It collects skills and other artifacts from Plepic courses.

## Use it

```
/plugin marketplace add Plepic-OU/plepic-plugin-marketplace
/plugin install teach@plepic-plugin-marketplace
```

## Plugins

| Plugin  | What it does                                                                  |
| ------- | ----------------------------------------------------------------------------- |
| `teach` | `/teach:teach` teaches a session, PR, file or topic step by step with quizzes. |
| `spec-driven` | `/spec-driven:brainstorming` turns an idea into a design doc. `/spec-driven:validate-design-document` runs project-specific expert validators on it, `/spec-driven:generic-design-review` is a generic baseline. Used in Day 2 of the Agentic Engineering course. |

## Add a plugin

1. Create `plugins/<name>/` with `.claude-plugin/plugin.json` and a `skills/<skill-name>/SKILL.md`.
2. Add an entry to `plugins` in `.claude-plugin/marketplace.json`. Set `source` to `./plugins/<name>`.
3. Open a pull request.
