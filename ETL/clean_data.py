import pandas as pd

sample = pd.read_csv('trending_yt_videos_113_countries.csv',low_memory=False)

#统计数据缺少值信息
print(sample.isnull().sum())

#将 description的缺少值填充为 “NULL”
sample['description'] = sample['description'].fillna('NULL')
#print((sample['description'].isnull().sum()))

#将 video_tags 的缺失值填充为 “Uncategorized”
sample['video_tags'] = sample['video_tags'].fillna('Uncategorized')
#print(sample['video_tags'].isnull().sum())

#将 langauge 的缺失值填充为 “Unknown”
sample['langauge'] = sample['langauge'].fillna('Unknown')
#print(sample['langauge'].isnull().sum())

#转换数据类型 publish_date--> datetime
sample['publish_date'] = pd.to_datetime(sample['publish_date'])
sample['snapshot_date'] = pd.to_datetime(sample['snapshot_date'])
#print(sample.isnull().sum())
