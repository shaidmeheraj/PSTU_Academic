What is Protected Mode?

Protected Mode হলো Intel 80286/80386 থেকে introduce হওয়া একটা advanced operating mode যেখানে:

Full 32-bit address space ব্যবহার করা যায় (up to 4 GB memory)।

Memory protection থাকে (একটা program আরেকটা program এর memory তে ঢুকতে পারে না)।

Multitasking possible হয় (একসাথে একাধিক task চালানো যায়)।

Virtual memory ব্যবহার করা যায় (RAM কম হলেও disk use করে বড় program চালানো যায়)।

Difference Between Real Mode and Protected Mode
Feature	Real Mode	Protected Mode
Address Space	1 MB (20-bit address)	Up to 4 GB (32-bit address)
Segment Size	Max 64 KB	Up to 4 GB
Memory Access	কোনো protection নাই (program অন্যের memory overwrite করতে পারে)	Protection আছে (privilege levels, access rights)
Descriptor	নেই (Segment * 16 + Offset formula)	আছে (Descriptor Table – GDT, LDT)
Privilege Levels (Rings)	নেই	আছে (Ring 0–Ring 3 → security)
Multitasking	Supported না	Supported
Virtual Memory	Possible না	Possible
Use	পুরনো OS (MS-DOS)	Modern OS (Windows, Linux)
