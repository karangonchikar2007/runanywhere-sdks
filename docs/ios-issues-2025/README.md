# iOS Issues - Execution Guide

**44 issues | 10 weeks | 2 engineers**

---

## 📖 Documentation Structure

### **README.md** (this file) ⭐
Your main reference - tells you **what to work on and when**

### **TRACK_A.md**
Implementation details for Track A (Senior Engineer - SDK Core)

### **TRACK_B.md**
Implementation details for Track B (Mid-Level Engineer - Sample App)

---

## 🚀 Day 1 - Start Here

### Track A (Senior - SDK)
1. Read this README (10 min)
2. Start **#81** - Remove PII logging (3h) ⚠️ **SECURITY**
3. See [TRACK_A.md](TRACK_A.md) for details

### Track B (Mid-Level - Sample App)
1. Read this README (10 min)
2. Quick wins - Delete 4 files (1.75h)
3. Start **#72** - Download progress (3h)
4. See [TRACK_B.md](TRACK_B.md) for details

---

## 📋 Track A: What to Work On (In Order)

### Week 1-2: Critical (21h)
1. **#81** ⚠️ Remove PII logging (3h) **DAY 1**
2. **#80** Standardize config (8h) **BLOCKS Track B #68**
3. **#82** Clean LLMSwift (4h)
4. **#101** Fix hardware detection (6h)

### Week 3-4: Core (32h)
5. **#69** Thinking tokens (12h)
6. **#76** Structured output (8h)
7. **#93** ModelDiscovery (4h)
8. **#96** Consolidate adapters (8h)

### Week 5-6: Architecture (28h)
9. **#98** Refactor extensions (8h)
10. **#106** Consolidate enums (6h) ⚠️ **COORDINATE Track B**
11. **#107** Refactor ComponentTypes (4h)
12. **#108** Voice errors (2h)
13. **#74** Chat templates (8h)

### Week 7-8: Cleanup (12h)
14. **#105** Remove embedding (4h)
15. **#86** Refactor logging (8h)

### Week 9-10: Concurrency (20h)
16. **#94** Swift 6 (20h)

### Later
17. **#66** FoundationModels (4h)

**Total: 18 issues, ~130h**

---

## 📋 Track B: What to Work On (In Order)

### Week 1-2: Foundation (14.25h)
1. **Quick Wins** (1.75h) **DAY 1**
   - #90: Delete JSONHelpers
   - #97: Delete ComponentInitializer
   - #99: Remove comments
   - #104: Add TODO
2. **#72** Download progress (3h)
3. **#68** Consolidate constants (8h) ⚠️ **WAIT for Track A #80**
4. **#78** Refactor ViewModel (2h)

### Week 3-4: Features (21.5h)
5. **#73** SDK context (6h)
6. **#70** Add model URL (11h)
7. **#63** Environment switcher (3h)
8. **#89** Update README (1h)

### Week 5-6: Architecture (13h)
9. **#95** Consolidate enums (4h) ⚠️ **COORDINATE Track A**
10. **#83** Reorganize utils (3h)
11. **#100** Remove unused params (2h)
12. **#102** Fix hardcoded value (1h)
13. **#85** Remove unused code (3h)

### Week 7-8: Cleanup (20h)
14. **#87** Simplify Analytics (6h)
15. **#88** Refactor EventData (8h)
16. **#84** Remove Memory (4h)
17. **#77** Remove Conversation (2h)

### Week 9-10: Final (11h)
18. **#75** FluidAudio (4h)
19. **#67** Consolidate constants (3h)
20. Testing & docs (4h)

**Total: 17 issues, ~90h**

---

## ⚠️ Critical Coordination Points

### 🔴 1. Configuration (Week 1-2)
- **Track A #80** FIRST (Days 1-2)
- **Track B #68** AFTER (Days 3-4)
- Why: A defines, B consumes

### 🟡 2. Enums (Week 5-6)
- **Track A #106**: Creates structure
- **Track B #95**: Uses structure
- Action: Daily sync Week 5

### 🟢 3. LLM (Week 3-4)
- **Track A**: Owns internals
- **Track B**: Uses API
- Action: A announces changes

### 🔴 4. Shared Files
Announce in standup before editing:
- `Package.swift`
- `RunAnywhere.swift`
- `Constants.swift`

---

## ✅ Weekly Goals

| Week | Track A | Track B | Success Metric |
|------|---------|---------|----------------|
| **1** | #81, #80 | Quick wins, #72 | All P0 done |
| **2** | #82, #101 | #68, #78 | P0 complete |
| **4** | #69, #76, #93, #96 | #73, #70, #63, #89 | All P1 done |
| **10** | All done | All done | 90%+ complete |

---

## 📊 Summary

| Priority | Issues | Hours | When |
|----------|--------|-------|------|
| P0 | 2 | 11h | Week 1 |
| P1 | 10 | 77h | Weeks 2-3 |
| P2 | 30 | 139h | Weeks 4-9 |
| P3 | 2 | - | Later (DB #109, #118) |
| **Total** | **44** | **227h** | **10 weeks** |

---

## 🎯 Daily Workflow

**Morning (15 min standup):**
- What did I complete?
- What am I working on?
- Any blockers?
- Editing shared files? (announce)

**During day:**
- Check this README for what's next
- See TRACK_A.md or TRACK_B.md for how to do it

**End of day:**
- Mark issues complete on GitHub

---

## 📝 For Implementation Details

**Track A (Senior):** Open [TRACK_A.md](TRACK_A.md)
- Detailed checklists
- File paths
- Code examples
- Testing requirements

**Track B (Mid-Level):** Open [TRACK_B.md](TRACK_B.md)
- Detailed checklists
- UI mockups
- Testing requirements
- Integration details

---

**That's it! 3 simple docs. Start Day 1 with your first issue.** 🚀
