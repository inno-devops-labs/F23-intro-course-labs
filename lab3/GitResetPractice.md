I followed all the instructions. Here are my observations:
a. Just created a new file named "file" and saved some data here. I was appendning some random chars on each commit.
b. I used the git reset with different options (soft, mixed, hard). I saw the difference. Soft reset just uncommitted
changes the changes left staged. Then, when I performed mixed reset, changes left in working directory/tree but became
unstaged and uncommitted. The hard reset was even harder, it removed everything that was after the commit to which I
reset.
c. I used resting to specific commit technique because It is safer as I see. You cannot mistake in this case, you are
using exact link, and it prevents you from logical errors.