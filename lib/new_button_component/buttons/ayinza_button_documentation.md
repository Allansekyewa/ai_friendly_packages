# AyinzaButton Documentation

## How to Use/Request (for AI and Developers)

> **Rule:** Always extract and state the intent before implementing any AyinzaButton. The type must be chosen based on intent, not appearance or convention.

**Intent-Driven Implementation Steps:**

| Step                | What To Do                                             |
|---------------------|-------------------------------------------------------|
| 1. Extract Intent   | State the intent from the prompt                       |
| 2. Map to Type      | Choose the correct AyinzaButtonType for that intent    |
| 3. Implement        | Only then, write the code using the correct type       |
| 4. Confirm if unsure| Ask for clarification if intent is ambiguous           |

---

**AyinzaButton** is an intent-driven, component-based button. When using this component, always select the `type` property based on the intent of the action:

- Use `AyinzaButtonType.elevated` for primary, positive, or main actions (e.g., Pay, Submit).
- Use `AyinzaButtonType.outline` for secondary, negative, or escape actions (e.g., Cancel, Back).
- Use `AyinzaButtonType.floating` for contextual, quick, or floating actions (e.g., Scan, Add).

**Key Principle:**
> The `type` property should always reflect the intent of the action. Do not choose a type based on appearance alone. This ensures your UI is consistent, maintainable, and easy for both humans and AI/codegen to reason about.

No default styling or advanced usage is assumed—always start with intent, then add appearance as needed for your specific use case.

## Best Practices
- **Primary actions** (e.g. Pay, Submit): Use `type: AyinzaButtonType.elevated` for prominence.
- **Secondary/negative actions** (e.g. Cancel, Delete): Use `type: AyinzaButtonType.outline` for less emphasis.
- **Contextual/quick actions** (e.g. Scan, Add): Use `type: AyinzaButtonType.floating` for floating action buttons.
- Do **not** set `child` if you want the icon/text to be rendered by the button itself.

## Example Usages

```dart
// Primary action: Pay
AyinzaButton(
  type: AyinzaButtonType.elevated,
  text: 'Pay',
  onPressed: () {},
)

// Secondary action: Cancel
AyinzaButton(
  type: AyinzaButtonType.outline,
  text: 'Cancel',
  onPressed: () {},
)

// Contextual action: Scan (FAB)
AyinzaButton(
  type: AyinzaButtonType.floating,
  icon: Icons.camera_alt,
  onPressed: () {},
)
```

## Notes
- Always choose the `type` based on the **intent** of the action, not just appearance.
- This makes your UI more maintainable, consistent, and AI/codegen-friendly. 