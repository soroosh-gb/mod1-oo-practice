# Part One - Intro to OO
Classes look good! You completed the assigned deliverables. Feel free to use this assignment as a playground to try things out and get some feedback beyond the required deliverables. 

# Part 2 

Well done! It looks really good. If this is to simple for you feel free to start building a small CLI for this! Thats a very good way to practice! Good work. 

# Part 4 - Associations
- `appointment.rb` looks good. Make sure the file name is singular. This will matter when you get to Rails.
- `patient.rb` also looks good. Will `Patient#doctors` include duplicates? In `create_appointment` I like that you are handling that appointments can't be on the same date. Instead of `.each` is there a better enumerable you could use to *find* an appointment that matches the doctor and dates? 
- In `doctor.rb` everything looks good besides that you didn't update (or comment out) `Doctor#add_patient`.
