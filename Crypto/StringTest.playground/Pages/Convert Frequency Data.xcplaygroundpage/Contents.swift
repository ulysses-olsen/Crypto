/*
 We have to convert this string of data into a form that swift can understand.
 We'll lowercase the letter, put it in quotes, put a colon between the
 letter and the frequency, and separate each line with a comma.
 */

let input = """
E    21912         E    12.02
T    16587         T    9.10
A    14810         A    8.12
O    14003         O    7.68
I    13318         I    7.31
N    12666         N    6.95
S    11450         S    6.28
R    10977         R    6.02
H    10795         H    5.92
D    7874         D    4.32
L    7253         L    3.98
U    5246         U    2.88
C    4943         C    2.71
M    4761         M    2.61
F    4200         F    2.30
Y    3853         Y    2.11
W    3819         W    2.09
G    3693         G    2.03
P    3316         P    1.82
B    2715         B    1.49
V    2019         V    1.11
K    1257         K    0.69
X    315         X    0.17
Q    205         Q    0.11
J    188         J    0.10
Z    128         Z    0.07
""".split(separator: "\n")

for line in input {
    let items = line.split(separator: " ")
    let letter = items[0]
    let frequency = items[3]
    print("\"\(letter.lowercased())\": \(frequency),")
}

/*
 "e": 12.02,
 "t": 9.10,
 "a": 8.12,
 "o": 7.68,
 "i": 7.31,
 "n": 6.95,
 "s": 6.28,
 "r": 6.02,
 "h": 5.92,
 "d": 4.32,
 "l": 3.98,
 "u": 2.88,
 "c": 2.71,
 "m": 2.61,
 "f": 2.30,
 "y": 2.11,
 "w": 2.09,
 "g": 2.03,
 "p": 1.82,
 "b": 1.49,
 "v": 1.11,
 "k": 0.69,
 "x": 0.17,
 "q": 0.11,
 "j": 0.10,
 "z": 0.07,
 */
