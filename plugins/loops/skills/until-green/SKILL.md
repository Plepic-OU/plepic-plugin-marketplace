---
name: until-green
description: Runs a test command in a loop and has Claude fix the code until the command passes, at most N rounds (default 5). Use when the user wants an agent loop whose stop condition is a test, or wants to compare their own loop with this reference.
---

# Until green

A loop needs a stop condition the agent cannot argue with. Here it is the exit code of a test command the user wrote.

1. If the user did not give a test command, ask for it. The test is the definition of done, so the loop never edits it.
2. Run the test command once. If it already passes, say so and stop.
3. Run `"${CLAUDE_PLUGIN_ROOT}/scripts/until-green.sh" "<test command>" <max rounds>`. Use 5 rounds unless the user named a number.
4. Report the script's last line (green after N rounds, or still red) and the files the loop changed (`git status --short`).
5. Tell the user to check the result by hand. A green test proves only what the test checks.
