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

## Add a plugin

1. Create `plugins/<name>/` with `.claude-plugin/plugin.json` and a `skills/<skill-name>/SKILL.md`.
2. Add an entry to `plugins` in `.claude-plugin/marketplace.json`. Set `source` to `./plugins/<name>`.
3. Open a pull request.
