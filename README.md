# plepic-plugin-marketplace

A Claude Code plugin marketplace. It collects skills and other artifacts from Plepic courses.

## Use it

```
/plugin marketplace add Plepic-OU/plepic-plugin-marketplace
/plugin install teach@plepic-plugin-marketplace
```

Get the latest version of every installed plugin:

```
/plugin marketplace update plepic-plugin-marketplace
```

## Plugins

| Plugin  | What it does                                                                  |
| ------- | ----------------------------------------------------------------------------- |
| `teach` | `/teach:teach` teaches a session, PR, file or topic step by step with quizzes. |
| `spec-driven` | `/spec-driven:brainstorming` turns an idea into a design doc. `/spec-driven:validate-design-document` runs project-specific expert validators on it, `/spec-driven:generic-design-review` is a generic baseline. Used in Day 2 of the Agentic Engineering course. |

## Credits

- `teach`: Kaido Koort.
- `spec-driven`: `brainstorming` is adapted from [obra/superpowers](https://github.com/obra/superpowers) by Jesse Vincent (MIT, see `plugins/spec-driven/LICENSE`). The design-doc validators are by Joosep Simm, adapted by Jevgeni Bogatyrjov. `generic-design-review` is by Vootele Rõtov.
- Marketplace and packaging: Jevgeni Bogatyrjov.

## Add a plugin

1. Create `plugins/<name>/` with `.claude-plugin/plugin.json` and a `skills/<skill-name>/SKILL.md`. Leave `version` out: users then get every merged change on `/plugin marketplace update`.
2. Add an entry to `plugins` in `.claude-plugin/marketplace.json`. Set `source` to `./plugins/<name>`.
3. Add the plugin's folder to `.github/CODEOWNERS` with the lead instructors of the cohorts that use it.
4. Run `claude plugin validate .`, then open a pull request. CI runs the same check. The "No version specified" warning is expected.

## License

MIT, see `LICENSE`. `spec-driven` carries its own notice for the adapted superpowers skill.
