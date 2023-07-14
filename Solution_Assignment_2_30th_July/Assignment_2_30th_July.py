import pandas as pd

#Task_!: Find out there avarage rating on weekly basis keep this in a mind that they take two days of leave

df= pd.read_csv('C:/Users/hp/Assignments/Assignment_2_30th_July/Solution_Assignment_2_30th_July/AgentPerformance.csv')
print(df)
print(df.dtypes)
df['Agent_Date']= pd.to_datetime(df['Date'])
df['Agent_week']= df['Agent_Date'].dt.isocalendar().week
week_mean= df.groupby(['Agent Name','Agent_week'])['Average Rating'].mean()
print(week_mean)

#Task_2: Total working days for each agents

df1= df[df['Total Chats']>0] 

#df1['Agent_Days']= df1['Agent_Date'].dt.day
#print(df1)print(df1.groupby('Agent Name')['Agent_Days'].count().sort_values())

print(df1['Agent Name'].value_counts().sort_values())


#Task_3: Total query that you hvae taken

print(df.groupby('Agent Name')['Total Chats'].sum())

#Task_4: total Feedback that you have received 

print(df.groupby('Agent Name')['Total Feedback'].sum())

#Task_5: a agent name who have average rating between 3.5 to 4

print("Avg rating between 3.5 to 4")
df3= df1[df1['Average Rating']>=3.5]
print(df3[df3['Average Rating']<=4])

df[(df['Average Rating']>3.5) & (df['Average Rating']<=4)]['Agent Name']


# Task_6: Agent name who have rating lesss then 3.5
 

print(df1[df1['Average Rating']<3.5]['Agent Name'].value_counts())

# Task_7: agent name who have rating more then 4.5

print(df1[df1['Average Rating']<4.5]['Agent Name'].value_counts())

# task_8: how many feedaback agents have received more then 4.5 average

df2= df[df['Average Rating']>4.5]


print(df2.groupby('Agent Name')['Total Feedback'].sum().sort_values())

# Task_9: average weekly response time for each agent 

#df1['Average Time']= 


# Task_10: average weekely resolution time for each agents 

# Task_11: list of all agents name

print(df['Agent Name'].value_counts())

# Task_12: percentage of chat on which they have received a feedback 

#print(df1.groupby('Agent Name')['Average Response Time'].mean())

#print(df['Agent Name'].value_counts())





