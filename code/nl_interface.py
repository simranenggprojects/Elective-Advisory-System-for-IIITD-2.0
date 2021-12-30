# importing libraries
import nltk
from nltk.tokenize import word_tokenize
from nltk.stem import PorterStemmer
from pyswip import Prolog

# printing welcome note
print('----------------------------------------------------------------------------------------------')
print('Welcome to Avvisare 2.0: Elective Advisory System')
print('----------------------------------------------------------------------------------------------')
print('Are you confused about which all electives to take as per career you want to pursue in future?')
print('If yes, you are at right place, I will help you out.')
print('If no, nevertheless I would help you to validate your electives choice.')
print('By the way, My name is Avvisare. What\'s your name? (Nickname will also work) ')
Name = input()
print('\nHi, {}. Let\'s together explore the choices for electives.'.format(Name))
print('What\'s the specialization that you have planned for?')
print('-> Artificial Intelligence')
print('-> Data Engineering')
print('-> Information Security')
spl = input()

# tokenizing and stemming the specialization
ps = PorterStemmer()
splinput = word_tokenize(spl)
splinput_stem = []
for i in splinput:
    splinput_stem.append(ps.stem(i))

# checking for artificial intelligence
if 'artifici' in splinput_stem:
    if 'intellig' in splinput_stem:
        spl = 'ai'

# checking for data engineering
if 'data' in splinput_stem:
    if 'engin' in splinput_stem:
        spl = 'de'

# checking for information security
if 'inform' in splinput_stem:
    if 'secur' in splinput_stem:
        spl = 'is'

# capturing interest level
print("\nSure, great choice. You will surely do well in {}.\nLet's try to find the electives which you can take.".format(spl.upper()))
print("For that, now you have to answer a few questions concerning yourself.")
print("Kindly respond about your interest in electives as:") 
print("No interest") 
print("Low interest") 
print("Medium interest") 
print("High interest") 
print("Very high interest/ Really high interest") 
print()

# function to map interest in english to a number
def eng_interest_to_number(x):
    x = word_tokenize(x)  # tokenizing
    ps = PorterStemmer()  # for stemming
    l = []                # list to have words after stemming
    for i in x:
        l.append(ps.stem(i))
    if 'no' in l:
        return 0
    elif 'low' in l:
        return 1
    elif 'medium' in l:
        return 2
    elif 'high' in l:
        if 'veri' in l:
            return 4
        elif 'realli' in l:
            return 4
        else:
            return 3 

# writing facts in file
f = open("temp.pl", 'w')

# asking questions based on specialization
if spl == 'ai':
    x = input("Level of interest in developing supervised and unsupervised ML models? ")
    x = eng_interest_to_number(x)
    f.write("interest('ML',{}).\n".format(x))
    x =  input("Level of interest in logic, reasoning, and knowledge representation? ")
    x = eng_interest_to_number(x)
    f.write("interest('AI',{}).\n".format(x))
    x =  input("Level of interest in designing of algorithms and checking correctness? ")
    x = eng_interest_to_number(x)
    f.write("interest('GA',{}).\n".format(x))
    x =  input("Level of interest in looking into data and catching insights? ")
    x = eng_interest_to_number(x)
    f.write("interest('DMG',{}).\n".format(x))
    x =  input("Level of interest in processing of natural language text and processing it? ")
    x = eng_interest_to_number(x)
    f.write("interest('NLP',{}).\n".format(x))
    x =  input("Level of interest in deep learning? ")
    x = eng_interest_to_number(x)
    f.write("interest('DL',{}).\n".format(x))
    f.close()
elif spl == 'de':
    x =  input("Level of interest in developing supervised and unsupervised ML models? ")
    x = eng_interest_to_number(x)
    f.write("interest('ML',{}).\n".format(x))
    x =  input("Level of interest in databases and their internals? ")
    x = eng_interest_to_number(x)
    f.write("interest('DBSI',{}).\n".format(x))
    x =  input("Level of interest in designing of algorithms and checking correctness? ")
    x = eng_interest_to_number(x)
    f.write("interest('GA',{}).\n".format(x))
    x =  input("Level of interest in looking into data and catching insights? ")
    x = eng_interest_to_number(x)
    f.write("interest('DMG',{}).\n".format(x))
    x =  input("Level of interest in processing of natural language text and processing it? ")
    x = eng_interest_to_number(x)
    f.write("interest('NLP',{}).\n".format(x))
    x =  input("Level of interest in collecting and managing data from varied sources to provide meaningful business insights? ")
    x = eng_interest_to_number(x)
    f.write("interest('DW',{}).\n".format(x))
    f.close()
else:
    x =  input("Level of interest in knowing about theoretical aspects of cryptograhic algorithms like the one that secures Zoom? ")
    x = eng_interest_to_number(x)
    f.write("interest('TMC',{}).\n".format(x))
    x =  input("Level of interest in computer networks and network security? ")
    x = eng_interest_to_number(x)
    f.write("interest('NSC',{}).\n".format(x))
    x =  input("Level of interest in knowing practical aspects of cryptographic algorithms? ")
    x = eng_interest_to_number(x)
    f.write("interest('AC',{}).\n".format(x))
    x =  input("Level of interest in software vulnerabilities, access control primitives? ")
    x = eng_interest_to_number(x)
    f.write("interest('SE',{}).\n".format(x))
    f.close()

print('\n**********************************************************************')
print("HERE IS THE LIST OF ELECTIVES SPECIALLY FOR YOU BASED ON YOUR INTEREST")
print('**********************************************************************')
# consulting file
swipl = Prolog()
swipl.consult("elective.pl")
elective_list = list(swipl.query("should_take(X)"))
print(elective_list)

print('\n----------------------------------------------------------------------')
print("\tI really hope that my suggestions were valuable.\n\tHave a great time at IIITD.")
print('----------------------------------------------------------------------')