নিচে তোমার **Root Finding Methods** টপিক অনুযায়ী ভাইভায় আসতে পারে এমন **important viva questions** (in English) আর প্রতিটার **বাংলা উত্তর** দেওয়া হলো👇

---

## 🌿 1. **Iteration Method (Fixed Point Method)**

**Q1:** What is the basic idea of the iteration method?
**A:** Iteration method-এ আমরা একটি equation ( x = g(x) ) আকারে লিখে ( x_{n+1} = g(x_n) ) ব্যবহার করে বারবার নতুন ( x ) বের করি যতক্ষণ পর্যন্ত result stable বা accurate না হয়।

**Q2:** What is the convergence condition of the iteration method?
**A:** যদি (|g'(x)| < 1) হয় সেই interval-এ, তাহলে method টি converge করে।

**Q3:** What are the advantages and disadvantages of the iteration method?
**A:**

* ✅ সহজ ও সহজে প্রোগ্রাম করা যায়।
* ❌ Convergence ধীর (slow), এবং সবসময় converge নাও করতে পারে।

**Q4:** Give a real-life example where iteration method can be used.
**A:** Electric circuit analysis-এ (যেমন nonlinear resistor voltage calculation), বা population growth modeling-এ iteration ব্যবহার হয়।

---

## ⚖️ 2. **Bisection Method**

**Q1:** What is the basic principle of the bisection method?
**A:** এই পদ্ধতিতে root যে interval-এ আছে তা divide করে বারবার midpoint-এ function evaluate করা হয়। যদি sign change হয়, তাহলে root সেই sub-interval-এ থাকে।

**Q2:** What is the main advantage of the bisection method?
**A:** এটি সবসময় **converge** করে যদি initial interval-এ function এর sign change থাকে।

**Q3:** What is the drawback of the bisection method?
**A:** Convergence খুব slow (ধীরে ধীরে root-এর দিকে যায়)।

**Q4:** Give a real-life example.
**A:** Thermodynamics-এ যখন temperature change অনুযায়ী pressure-এর value বের করতে হয় (যেমন steam table-এ interpolation), তখন bisection method ব্যবহার করা যায়।

---

## 🔀 3. **False Position Method (Regula Falsi)**

**Q1:** How is the false position method different from the bisection method?
**A:** Bisection-এ midpoint নেওয়া হয়, কিন্তু False Position-এ line interpolation (straight line) ব্যবহার করে ( x )-axis-এর সাথে intersection point নেওয়া হয়।

**Q2:** What is the formula for the false position method?
**A:**
[
x = \frac{a f(b) - b f(a)}{f(b) - f(a)}
]

**Q3:** What is the advantage of the false position method over bisection?
**A:** এটি সাধারণত bisection method-এর তুলনায় দ্রুত converge করে।

**Q4:** Give a real-life example.
**A:** Engineering-এ flow rate বা friction factor (Darcy-Weisbach equation) নির্ণয়ের জন্য False Position method ব্যবহার করা হয়।

---

## ⚙️ 4. **Newton-Raphson Method**

**Q1:** What is the formula of the Newton-Raphson method?
**A:**
[
x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}
]

**Q2:** Why is the Newton-Raphson method faster?
**A:** এটি **quadratic convergence** দেয়, অর্থাৎ প্রতি iteration-এ error অনেক কমে যায়।

**Q3:** What is the disadvantage of the Newton-Raphson method?
**A:** যদি derivative ( f'(x) = 0 ) হয় বা function irregular হয়, তবে method fail করতে পারে।

**Q4:** Give a real-life example.
**A:** Control system-এ root-finding (যেমন stability analysis-এর জন্য pole-এর মান বের করা), অথবা electrical power flow equations-এ Newton-Raphson ব্যবহার হয়।

---

## 🔎 Extra Common Viva Questions

**Q1:** What is a root of an equation?
**A:** যখন ( f(x) = 0 ) হয়, তখন সেই ( x )-এর মানটিই হলো equation-এর root।

**Q2:** What is convergence?
**A:** যখন successive approximation গুলো আস্তে আস্তে actual root-এর কাছাকাছি চলে আসে, সেটাই convergence।

**Q3:** Among all methods, which one is the fastest and why?
**A:** Newton-Raphson method সবচেয়ে fast, কারণ এটি quadratic convergence দেয়।

**Q4:** Which method is guaranteed to converge?
**A:** Bisection method সবসময় converge করে।

**Q5:** What is the main difference between open and bracketing methods?
**A:**

* **Bracketing methods:** root-এর দুই পাশে initial interval লাগে (যেমন bisection, false position)।
* **Open methods:** এক বা দুইটা initial guess দিয়েই কাজ চলে (যেমন iteration, Newton-Raphson)।

---

চাও চাইলে আমি এগুলোর **সারসংক্ষেপ টেবিল** করে দিতে পারি — যেমন method, formula, convergence, advantage, disadvantage একসাথে সাজিয়ে।
তুমি চাও?
