:- dynamic interest/2.

can_take_elective(X):-
    interest(X,InterestLevel),
    InterestLevel >= 2.

elective('ML'):-
    can_take_elective('ML'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('MACHINE LEARNING
    COURSE CODE: CSE543
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE343
    Feedback or Suggestion from Seniors:
    The course is really awesome, but only theoretical concepts are covered
    but you can take help of TAs for practical aspects. It goes indepth in theory.
    It is a little heavy course in terms of workload, so be consistent.
    This course is helpful in placements for AI role.'),nl,
    write('----------------------------------------------------------------------').

elective('AI'):-
    can_take_elective('AI'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('ARTIFICIAL INTELLIGENCE
    COURSE CODE: CSE643
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE643
    Feedback or Suggestion from Seniors:
    It really goes deep into AI. The three main aspects are covered
    Logic, Reasoning and Knowledge Representation. The course is okay in terms of workload
    Assignments really require much efforts but they enhance skills.'),nl,
    write('----------------------------------------------------------------------').

elective('GA'):-
    can_take_elective('GA'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('GRADUATE ALGORITHMS
    COURSE CODE: CSE525
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE525
    Feedback or Suggestion from Seniors:
    It is extremely indepth course that talks about correctness of algorithms as well.
    The course is extremely heavy in terms of workload. Be consistent.
    This course would give you new perspective in Algorithms and
    is extremely helpful in placements.'),nl,
    write('----------------------------------------------------------------------').

elective('DMG'):-
    can_take_elective('DMG'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('DATA MINING
    COURSE CODE: CSE506
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE506
    Feedback or Suggestion from Seniors:
    This course is okay in terms of workload and quite practical
    It gives you good hands on practice. The marking is really tight.
    It is tough to get good grade because almost everyone performs well.'),nl,
    write('----------------------------------------------------------------------').

elective('NLP'):-
    can_take_elective('NLP'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('NATURAL LANGUAGE PROCESSING
    COURSE CODE: CSE556
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE556
    Feedback or Suggestion from Seniors:
    Those who love text processing and working with text data would love this course.
    It is really heavy in terms of workload. But when you do this course
    you would really feel power in your hands to make full fleged system.'),nl,
    write('----------------------------------------------------------------------').

elective('DL'):-
    can_take_elective('DL'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('DEEP LEARNING
    COURSE CODE: CSE641
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE641
    Feedback or Suggestion from Seniors:
    The focus of the course will be hands on and the you would be able to design intelligent
    deep learning systems for solving the problems in the area of your interests.
    It is really heavy in terms of workload. But when you do this course
    you would really feel power in your hands to make full fleged system.'),nl,
    write('----------------------------------------------------------------------').

elective('DBSI'):-
    can_take_elective('DBSI'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('DATABASE SYSTEM IMPLEMENTATION
    COURSE CODE: CSE507
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE507
    Feedback or Suggestion from Seniors:
    If you loved DBMS during B.Tech. and want to explore more,
    you must take this course. This is only dbms course you need.
    It seems a little tough initially by really worth it,
    and enjoyable.'),nl,
    write('----------------------------------------------------------------------').

elective('DW'):-
    can_take_elective('DW'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('DATA WAREHOUSING
    COURSE CODE: CSE606
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE606
    Feedback or Suggestion from Seniors:
    Take this subject if you want to closely work with data.
    You will get a very practical project and it will require you,
    to know about the subject in depth.
    Also, consistency is extremely important for the course.'),nl,
    write('----------------------------------------------------------------------').

elective('TMC'):-
    can_take_elective('TMC'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('THEORY OF MODERN CRYPTOGRAPHY
    COURSE CODE: CSE524
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE524
    Feedback or Suggestion from Seniors:
    Have good hands on discrete mathematics.
    END SEM is quite difficult and lengthy, practice can help only.
    There are a lot of algorithms, so study side by side.'),nl,
    write('----------------------------------------------------------------------').

elective('NSC'):-
    can_take_elective('NSC'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('NETWORK SECURITY
    COURSE CODE: CSE550
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE350
    Feedback or Suggestion from Seniors:
    If you take TMC, then there will be some overlapping topics.
    If you took TMC, this subject will be really easy.
    It is light subject in terms of workload.'),nl,
    write('----------------------------------------------------------------------').

elective('AC'):-
    can_take_elective('AC'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('APPLIED CRYPTOGRAPHY
    COURSE CODE: CSE546
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE546
    Feedback or Suggestion from Seniors:
    Have good hands on discrete mathematics.
    Practice is really important.
    In terms of workload, its medium level.'),nl,
    write('----------------------------------------------------------------------').

elective('SE'):-
    can_take_elective('SE'),
    nl,
    write('----------------------------------------------------------------------'),nl,
    format('SECURITY ENGINEERING
    COURSE CODE: CSE552
    COURSE DETAILS: http://techtree.iiitd.edu.in/viewDescription/filename?=CSE552
    Feedback or Suggestion from Seniors:
    It is a theoretical subject and there are a lot of
    assignments which needed to be done, there is approx
    55% weightage for assignments, hence high workload.'),nl,
    write('----------------------------------------------------------------------').


should_take(X):-
    consult("temp.pl"),
    elective(X).



