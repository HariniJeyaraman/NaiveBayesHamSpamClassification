import pandas as pd
import numpy as np
data = pd.read_excel("stolen.xlsx") 
count=0
print(data)
for ind in data.index:
    print(data['Color'][ind],data['Stolen'][ind])
for ind in data.index:
    if(data['Color'][ind]=='Red'):
        count=count+1
print(count)
