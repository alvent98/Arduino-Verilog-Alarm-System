# Arduino-Verilog-Alarm-System
Basic alarm system (Arduino &amp; Verilog versions) for postgraduate Edge Computing Course, Spring Semester 2022

# Assignment Description (in greek):
## Θέμα 2: Υλοποίηση Ενσωματωμένου Συστήματος με χρήση Verilog ή Arduino
Ένα (υποτυπώδες) σύστημα συναγερμού βασίζεται σε ένα Ενσωματωμένο Σύστημα (ΕΣ) και
χρησιμοποιείται για την προστασία ενός μικρού χώρου. 
- Το ΕΣ έχει τέσσερις εισόδους (Motion1,
Motion2, Reed και Code) και δύο εξόδους (Active, Alarm).
- Οι είσοδοι Motion1 και Motion2 είναι συνδεδεμένες σε δύο αισθητήρες κίνησης εντός του
χώρου. Όταν ανιχνευτεί κί νηση ενεργοποιούνται, δηλαδή δίνουν έξοδο 1.
- Η είσοδος Reed είναι συνδεδεμένη σε αισθητήρα τύπου Reed Switch στην πόρτα εισόδου. Όταν
ανιχνευτεί άνοιγμα της πόρτας ενεργοποιείται, δηλαδή δίνει έξοδο 1.
- Η είσοδος Code είναι 5 bit και οδηγείται από ένα υποτυπώδες πληκτρολόγιο με 32 πλήκτρα,
αριθμημένα από το 0 μέχρι το 30 και 1 πλήκτρο Arm. Ανάλογα με το τί πλήκτρο πατάει ο
χρήστης, ο αντίστοιχος δυαδικός αριθμός εγγράφεται στα 5 bit του σήματος Code ή 31 στην
περίπτωση του Arm.
- Η έξοδος Active δείχνει πως ο συναγερμός έχει ενεργοποιηθεί
- Η έξοδος Alarm είναι συνδεδεμένη σε μια σειρήνα και ενεργοποιείται όταν ανιχνευτεί κίνηση ή
άνοιγμα της πόρτας, ενώ ο συναγερμός είναι ενεργός.
- Κάθε φορά που ο χρήστης πατάει το πλήκτρο Arm, ο συναγερμός οπλίζει και ενεργοποιεί την έξοδο
Active.
    - Ο ενεργός συναγερμός μπορεί να αφοπλιστεί μόνο με το πλήκτρο με τον αριθμό 4.
    - Όσο είναι οπλισμένος ο συναγερμός, αν ανιχνευτεί κίνηση ή άνοιγμα της πόρτας, τότε ενεργοποιείται η σειρήνα
(σήμα Alarm) μέχρι ο χρήστης να τον αφοπλίσει μέσω του πλήκτρου 4.
    - Σε κάθε άλλη περίπτωση, η
σειρήνα δεν ενεργοποιείται και η έξοδος Active είναι ανενεργή.
## Ζητούμενα:
A. Υλοποιήστε και επαληθεύστε ένα module σε Verilog το οποίο να υλοποιεί τις ανωτέρω
προδιαγραφές
B. Υλοποιήστε σύστημα σε Arduino το οποίο να υλοποιεί τις ανωτέρω προδιαγραφές.
Παραδοτέα
1. Τεκμηρίωση του ΕΣ που θα περιλαμβάνει:
    - Περιγραφή της υλοποίησης
    - Κώδικα Verilog & Arduino
    - Screenshots από την εκτέλεση του Verilog κώδικα στο Icarus ή στο
Edaplayground (https://www.edaplayground.com/)
    - Screenshots από την εκτέλεση του Arduino στον εξομοιωτή Tinkercad 
(https://www.tinkercad.com/)
2. Επίδειξη την ημέρα της εξέτασης