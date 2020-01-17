from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize,sent_tokenize
import pandas as pd
import numpy as np
import sub_modules as sub
import re
df=pd.read_excel("dataset.xlsx")
testdf=pd.read_excel("dataset.xlsx")
testdf=testdf.head(5)
df2_spam=df.loc[df['Category']=='spam']
df2_ham=df.loc[df['Category']=='ham']
df_ham=pd.DataFrame(columns=['Word','Frequency'])
df_spam=pd.DataFrame(columns=['Word','Frequency'])

addcounter=0
multcounter=0

def inputfoo(str):    #To filter the given mail from stopwords
    str=str.lower()
    # print(str)
    word_tokens=word_tokenize(str)
    #print(word_tokens)
    stop_words = set(stopwords.words('english'))

    filtered_sentence = [w for w in word_tokens if not w in stop_words] 
    
    filtered_sentence = [] 
    
    for w in word_tokens: 
        if w not in stop_words: 
            filtered_sentence.append(w) 
         
    str2=""
    for ele in filtered_sentence:  
        str2 +=" "+ ele 
    words=""
    for k in str2.split("\n"):
        words=words+(re.sub(r"[^a-zA-Z]+", ' ', k))
    return words
    # print(word_tokens) 
    # print(filtered_sentence)


def count_word(str1):    #To count the number of occurrences of the filtered unique words 
  
    # break the string into list of words
    global addcounter  
    str1 = str1.split()          
    str2 = [] 
    #li1=[]
    # li2=[]
    try1=[]
    try2=[]
    # loop till string values present in list str 
    for i in str1:              
  
        # checking for the duplicacy 
        if i not in str2: 
  
            # insert value in str2 
            str2.append(i)  
    
    for i in range(0, len(str2)):
        ct="0.0" 
        try1.append(str2[i])
        for j in str1:
            if j==str2[i]:
                ct=str(ct)
                y="1.0"
                ct=sub.Addition(ct,y)
                addcounter=addcounter+1
               
        try2.append(ct)
    data = {'Word':try1, 'Frequency':try2}
    df = pd.DataFrame(data)
    return df




#classifying the given ipmail as spam or ham 

def testdata(ipmail):
        filtered_ipmail=inputfoo(ipmail)

        iplist=filtered_ipmail.split() 
        global addcounter
        global multcounter
        global p_spam
        global p_ham      
        #To search the freq of each unique word from the i/p mail
        for wd in iplist:
            if wd in df_spam.values:
                lt=df_spam.loc[df_spam['Word'] == str(wd)]
                val = lt["Frequency"].tolist()
                x=float(val[0])
                x=str(x)
                y="1.0"
            else:
                x="0.0"
                x=str(x)
                y="1.0"
            v1=float(sub.Addition(x,y))/float(den_spam)
            addcounter=addcounter+1
            v1=round(float(v1),3)
            p_spam=sub.Multiply(str(v1),str(p_spam))
            multcounter=multcounter+1
            
            
        for wd in iplist:
            if wd in df_ham.values:
                lt=df_ham.loc[df_ham['Word'] == str(wd)]
                val = lt["Frequency"].tolist()
                x=float(val[0])
                x=str(x)
                y="1.0"
            else:
                lt=df_ham.loc[df_ham['Word'] == str(wd)]
                val = lt["Frequency"].tolist()
                x="0.0"
                x=str(x)
                y="1.0"
            v1=float(sub.Addition(x,y))/float(den_ham)
            addcounter=addcounter+1
            v1=round(float(v1),3)
            p_ham=sub.Multiply(str(v1),str(p_ham))
            multcounter=multcounter+1
          
        fresult=""  
        if p_ham > p_spam:
            fresult="ham"
        elif p_ham < p_spam:
            fresult="spam"
        return fresult

def testing():  #to calculate accuracy
    exp_op=[]
    global addcounter
    global multcounter

    for i in range(0,len(testdf)):
        iptext=testdf["Message"][i]
        #print str(iptext)
        exp_op.append(str(testdata(iptext)))
        print exp_op[i]
    #print exp_op
    actual_op=testdf["Category"].tolist()
    #print actual_op
    ct="0.0"
    for i in range(0,len(actual_op)):
        if exp_op[i]==actual_op[i]:
            ct=str(ct)
            y="1.0"
            ct=sub.Addition(ct,y)
            addcounter=addcounter+1
    #print ct
    acc=float(ct)/float(len(actual_op))
    acc=round(float(acc),3)
    t="100.0"
    acc=sub.Multiply(str(acc),str(t))
    multcounter=multcounter+1

    print("Accuracy="+str(acc))




df2_spam=df2_spam.reset_index()

# print(df2_spam)
# for col in df2_spam.columns:
#     print(col)
book=""
for i in range(0,len(df2_spam)):
    #calling the functions
    book=book+df2_spam['Message'][i]

final_words1=inputfoo(book)
 
df2=count_word(final_words1)
df_spam=df_spam.append(df2)
#df_ham=df_ham.append(df2)
# print(df_spam)
#print(df_spam)



df2_ham=df2_ham.reset_index()
book=""
for i in range(0,len(df2_ham)):
    #calling the functions
    book=book+df2_ham['Message'][i]

final_words1=inputfoo(book)

df2=count_word(final_words1)
df_ham=df_ham.append(df2)
#print(df_ham)

#appending only words of ham and spam
df_all=df_ham.append(df_spam)
total_distinct_words=len(df_all.Word.unique())


df_all=df_ham.append(df_spam)
total_distinct_words=len(df_all.Word.unique())
#print("total distinct words are : "+str(total_distinct_words))

#computing P(ham) and P(spam)
        #P(ham) = no of mails belonging to category ham / total no of mails
total_mails=len(df)
ham_mails_count=len(df2_ham)
p_ham=float(ham_mails_count)/float(total_mails)

#P(spam) = no of documents belonging to category spam / total no of documents
spam_mails_count=len(df2_spam)
p_spam=float(spam_mails_count)/float(total_mails)






spmfreq=df_spam["Frequency"].tolist()
x=0
for elt in spmfreq:
    x=float(x)
    x=str(x)
    y=float(elt)
    y=str(y)
    x=sub.Addition(x,y)
    addcounter=addcounter+1
tot_spam=x  #tot_spam is the total count of words belonging to spam 

hmfreq=df_ham["Frequency"].tolist()
x=0
for elt in hmfreq:
    x=float(x)
    x=str(x)
    y=float(elt)
    y=str(y)
    x=sub.Addition(x,y)
    addcounter=addcounter+1
tot_ham=x  #tot_ham is the total count of words belonging to ham 

den_spam=sub.Addition(str(tot_spam),str(float(total_distinct_words)))
den_ham=sub.Addition(str(tot_ham),str(float(total_distinct_words)))
addcounter=addcounter+2

print testdf
testing()

print("Adders="+str(addcounter))
print("Multipliers="+str(multcounter))



