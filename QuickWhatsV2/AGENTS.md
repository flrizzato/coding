<!-- BEGIN KAI -->
# Instructions: RAD Studio IDE Integration (Kai)

Prioritize the IDE-aware MCP server (Kai) for all operations to preserve IDE state and unsaved changes.

## Core Principles

- **IDE-First**: Use the IDE buffer as the source of truth for open files.
- **Minimal Interruption**: Avoid `openFile` unless necessary for safety (DFM) or requested by the user.
- **Sequential Execution**: Wait for each tool to finish before calling the next.

## Skills

- **[ide-file-operations](skills/ide-file-operations/SKILL.md)**: Safe reading/writing, DFM/PAS synchronization, and buffer management.

## Project Management

- **Add file**: Create on disk, then `addFileToProject(filepath, isunitorform)`.
- **Remove file**: `removeFileFromProject(filepath)`. Do not delete from disk unless asked.
- **Info**: `getProjectInfo(projectfile)`, `openProject(filepath, newprojectgroup)`.

## Debugging

- **Run/Continue**: `runProject()` | **Step Over**: `stepOver()` | **Step Into**: `stepInto()` | **Stop**: `terminateProcess()`
- **Inspect**: `getCallStack()`, `evaluateExpression(expression)`, `goToEditorPosition`
- **Breakpoints**: `addBreakpoint(file, line)`, `removeBreakpoint(file, line)`, `removeAllBreakpoints()`, `listBreakpoints()`

## Tool Contract Summary

- **Read/State**: `getEditorLines` (preferred), `getEditorContent` (full file), `getModificationStatus`, `getActiveEditorFile`, `listOpenFiles`, `getSelectedText`
- **Edits**: `applyEdit` (preferred), `setEditorContent` (full file only), `goToEditorPosition`
- **Files/Project**: `openFile`, `reloadFile`, `openProject`, `addFileToProject`, `removeFileFromProject`, `getProjectInfo`
- **Debug**: `runProject`, `stepOver`, `stepInto`, `terminateProcess`, `evaluateExpression`, `getCallStack`, `addBreakpoint`, `removeBreakpoint`, `listBreakpoints`

## Safety & UX

- Use `yesNoQuestion` only for ambiguous or destructive actions (e.g., `reloadFile`).
- All editor positions (line/column) are **1-based**.
- If a tool is missing, fallback to disk access only if the file is closed.
<!-- END KAI -->