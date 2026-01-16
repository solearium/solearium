# 🧭 Team Workflow Guide

This document explains our GitHub workflow.

---

## 🚀 Workflow Overview
1. **Issue Created** – Admin raises issue with clear description.
2. **Claiming an Issue** – Developer comments `/claim` on the issue.
3. **Branch Creation** – Create a branch from `main`:
   ```bash
   git checkout -b feature/issue-<issue_number>
   ```
4. **Commit Changes**
   ```bash
   git add .
   git commit -m "Fix issue #<number>: short summary"
   git push origin feature/issue-<issue_number>
   ```
5. **Pull Request**
   - Open PR → base: `main`, compare: your branch.
   - Use PR template Refer to [PULL_REQUEST_TEMPLATE.md](./PULL_REQUEST_TEMPLATE.md).
   - Mention the issue with `Fixes #<issue_number>`.

6. **CI Tests**
   - Tests run automatically via GitHub Actions.
   - PR must show ✅ “Run Tests” before merge.

7. **Review & Merge**
   - Admin reviews and merges only after all checks pass.

---

## 🧩 Rules
- Branch naming: `feature/issue-<number>`
- Never push directly to `main`
- Each issue → one PR
- Always include `Fixes #<id>` in PR description
- Small, focused PRs are easier to review

---

## 🔧 Admin Notes
- Branch protection enabled on `main`
- Only admins can merge PRs
- Merges require all status checks to pass
- `/claim` assigns issues automatically
