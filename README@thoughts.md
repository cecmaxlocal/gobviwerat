Developing a desktop IDE/editor like "Gooby" (inspired by Gobby) using Dart is an interesting and feasible project that leverages modern tools and frameworks. Here are some thoughts and points to consider:

### Strengths of Dart and Flutter for Desktop IDEs
- **Cross-platform desktop support:** Flutter supports Windows, macOS, and Linux, enabling one codebase for multiple platforms.
- **Rich UI components:** Flutter’s widget system allows building highly customizable, responsive, and visually appealing interfaces.
- **Hot reload and rapid development:** Flutter’s development experience enables quick iterations and testing.
- **Strong package ecosystem:** Packages for syntax highlighting, file system access, networking (e.g., WebSocket for collaboration), and state management fit well with IDE requirements.
- **Dart language features:** Dart is modern, with async/await, strong typing, and a familiar C-style syntax, easing development.
  
### Key Implementation Considerations
- **Editor core:** Integrate or develop a robust text editing component supporting multi-line editing, rich text (syntax highlighting), undo/redo, and cursor/selection management. Packages like `flutter_code_editor`, `flutter_highlight`, or custom implementations may be used.
- **Collaboration:** For multiplayer editing akin to Gobby, a backend server with WebSocket communication is needed to synchronize edits in real-time.
- **File system integration:** Desktop apps require permissions and APIs to browse, open, save, and monitor files/folders, which Flutter supports imperfectly but sufficiently for typical desktop use cases.
- **Plugin/extensibility:** Considering an extensible architecture allows third-party plugin support to add language servers, formatters, debugging, and other IDE features.
- **Performance:** Optimizing performance is key for smooth editing, especially with large files or many users collaborating.
- **User experience:** Clean UI, shortcuts, theming (including dark mode), and dialogs (open/save, preferences) improve usability and appeal.

### Challenges
- Dart’s desktop support, though stable, is less mature than mobile/web, with occasional platform-specific quirks.
- Lack of some low-level native integrations and OS-specific features common in traditional IDEs.
- Collaborative editing is complex, requiring operational transforms or CRDTs for conflict resolution.

### Recommendations
- Start with a minimal editor prototype (like the `gobby.dart` UI file).
- Build core features incrementally: file handling, syntax highlighting, basic editing.
- Add networking and collaboration support once stable local editing exists.
- Use modular code structure for maintainability and scaling features.
- Leverage existing Dart/Flutter libraries whenever possible.

### Final Thought
Using Dart and Flutter for a desktop collaborative editor aligns well with modern development trends and cross-platform goals. While challenges exist, especially for real-time collaboration and native desktop integrations, the benefits of UI flexibility and rapid development make it a compelling choice.

If you plan to build or prototype such an IDE, focusing on solid architecture and phased feature development will help manage complexity effectively.