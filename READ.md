I have a PHP project written in procedural style (PHP + MySQL + HTML + CSS).

I will paste ALL my project files below.

Your task is to **FULLY refactor the project into an Object-Oriented structure** while strictly respecting these rules:

---

### 🔒 RULES (VERY IMPORTANT)

1. **DO NOT add new features**
2. **DO NOT remove any existing functionality**
3. **KEEP the exact same behavior and logic**
4. **PRESERVE all features**, including but not limited to:

   * search
   * filters (e.g., category)
   * sorting
   * pagination
   * authentication / sessions / role
   * joins and SQL logic
   * SUM prices and COUNT assets
   
5. **DO NOT simplify logic unless necessary**
6. **DO NOT guess missing parts** — use ONLY what I provide

---

### 🎯 GOAL

Refactor the project into clean OOP using this structure:

/app
/Core
/Models
/Controllers
/views
/public
/assets

---

### 🧠 REQUIREMENTS

* Use a **Database class (PDO Singleton)**
* Convert each entity into a **Model**
* Move logic into **Controllers**
* Keep UI inside **Views**
* Use a **single entry point: public/index.php (router)**

---

### 🎨 OUTPUT REQUIRED (2 VERSIONS)

#### ✅ Version 1 — CSS

* Use my existing CSS (or keep styling as-is)
* Do not introduce new frameworks

#### ✅ Version 2 — Bootstrap

* Same exact features
* Only upgrade UI using Bootstrap

---

### 📦 OUTPUT FORMAT

1. Show full folder structure
2. Provide ALL files completely rewritten (no placeholders, no missing parts)
3. Clearly separate:

   * Models
   * Controllers
   * Views
   * Router (index.php)
4. Make sure everything is runnable

---

### ⚠️ IMPORTANT

* Do NOT leave empty files
* Do NOT skip any file
* Do NOT summarize — give FULL code
* Keep everything consistent with my original project

---

### 📥 FILES

(PASTE ALL YOUR FILES BELOW, EACH WITH ITS NAME)

Example:

--- add_user.php ---
[paste code]

--- add_user.php ---
[paste code]

--- add_user.php ---
[paste code]

