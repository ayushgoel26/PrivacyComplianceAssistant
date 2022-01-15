import sys
from os import system

print('Enter your Company name :')
companyName = input()
hasCaliBusiness = input("Do you have business in California? (Y or N)\n")
if hasCaliBusiness == 'n' or hasCaliBusiness == 'N':
    print("Currently CCPA doesn't apply to you.")
    sys.exit()

revenue = int(input("Please enter your gross annual revenue (in millions):\n"))
ccpaReq2 = int(input("How many California resident household or devices' personal information is being bought, received or sold?\n"))
ccpaReq3 = int(input("What percentage of annual revenue is derived from California resients personal info?\n"))

if revenue<25 and ccpaReq2<50000 and ccpaReq2<50:
    print("Currently CCPA doesn't apply to you.")
    sys.exit()

employeeCount = int(input('Please enter the number of employees in your company\n'))

companyFile=open("companies.pl","a")
companyFile.write(f"\ncompany({companyName.lower().strip()},{employeeCount}).\n")
companyFile.close()


print('Please answer the below questions with a Y or N :')

dbFile=open("database.pl","a")
data=[]

with open('questions.csv') as file:
    for line in file.readlines():
        principle,question,weight,dbCategory,dbQuestion=line.split('|')
        print(question)
        ans = input()
        ans = 1 if (ans=='Y' or ans =='y') else 0
        dbRow = f'question({companyName.lower().strip()},{dbCategory.strip()},{dbQuestion.strip()},{weight.strip()},{ans}).\n'
        data.append(dbRow)

dbFile.write("\n")
dbFile.writelines(data)
dbFile.write("\n")
dbFile.close()
