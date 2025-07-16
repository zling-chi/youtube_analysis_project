# youtube_analysis_project

## 项目简介
#### 本项目基于 YouTube 视频数据集，搭建离线数据仓库，分析不同国家、分类的视频热度趋势，使用 MySQL 构建数据仓库，FineBI 展示可视化结果。

## 目标
#### 构建一个离线数据仓库，用于分析 YouTube 各地区热门视频的趋势和标签分布；  
#### 对热门视频的标题、标签、观看量、点赞量等进行多维度分析；  
#### 最终实现数据可视化展示（Tableau、PowerBI 或 FineBI 等）。

## 数据源
https://www.kaggle.com/datasets/asaniczka/trending-youtube-videos-113-countries?resource=download
### Detail
#### title-----视频标题
#### channel_name-----频道名称
#### daily_rank-----每日排名
#### daily_movement-----每日变动
#### weekly_movement-----每周变动
#### snapshot_date-----数据收集日期
#### country-----国家
#### view_count-----观看次数
#### like_count-----点赞次数
#### comment_count-----评论次数
#### description-----描述
#### thumbnail_url-----视频缩略图URL
#### video_id-----视频ID
#### channel_id-----频道ID
#### video_tags-----视频标签
#### kind-----视频类型
#### publish_date-----发布时间
#### langauge-----语言


## 项目结构
#### data/  
####   --trending_yt_videos_113_countries.csv   
#### ETL/
####   --claean_data.py  #处理缺少值、转换数据类型
####   --load_to_db.py   #导入MySQL脚本
#### warehose/
####   --create_tables   #建表语句（事务表/维度表）
####       --create_table_dim_channel.sql
####       --create_table_dim_video.sql
####       --create_table_dim_date.sql
####       --create_table_fact_video_daily_metrics.sql
####   --insert_dimension_data   #创建的维度表数据
####       --insert_table_dim_channel.sql
####       --insert_table_dim_video.sql
####       --insert_table_dim_date.sql
####       --insert_table_fact_video_daily_metrics.sql
#### analysis/
####   --exploratory.ipynb   #数据分析
####   --metrics.sql   #SQL指标查询
#### dashboard/   #可视化文件（PowerBI）
####   --youtube_analysis.pbix
#### README.md

## 项目总结
### 通过仪表板可视化结论总结
#### ①第一页：总览页
##### 通过热门视频每日更新趋势折线图，数据在27日开始出现明显下降趋势，四天内浏览量总和下降了42.33%（约85亿）；
##### 通过热门视频Top10条形图，可以看出视频ID为 RLmUxX08pKs 的视频拥有最高的 view_count 总和，浏览量为；11561541574；
##### 且Top10的浏览量范围分布在6.48亿-1156亿间。
#### 结论：单视频对总流量的影响极大，热门视频存在“超级头部”效应，整体热度集中在极少数对象中。

#### 第二页：国家分析
##### 国家 ZW（津巴布韦）在 view_count 的总和中排名第一；
##### 最低国家为 CH（瑞士），其 view_count 总和为 51638216；
##### 津巴布韦一国贡献了全部播放量的 13.37%；
##### 所有 113 个国家中，浏览量总和范围在 51638216 ~ 803570366195。
#### 结论：播放量存在极强的地域集中性，部分国家的视频更易引发热度；分析区域差异对于内容运营有指导意义。

#### 第三页：时间分析
##### 在所有星期中，Thursday（周四） 的总播放量最高，为 14.48%，达 8701亿+；
##### 相对最低为 Friday（周五），播放量为 8446亿+；
##### 一周 7 天中播放量总和的变化范围为 8446亿 ~ 8701亿。
#### 结论：视频在周四更容易获得播放量峰值，可能与发布时间策略、用户活跃习惯相关；需结合发布时间优化策略。

#### 第四页：频道标签
##### like_count 平均值与 comment_count 平均值整体呈负相关趋势；
##### Rockstar Games 频道在两者差值方面最显著，其 like_count 平均值比 comment_count 高出 5,132,156.69；
##### 所有 40,828 个频道中：
##### like_count 平均值范围：0.00 ~ 5,568,055.94
##### comment_count 平均值范围：0.00 ~ 435,899.24
#### 结论：高互动（点赞）并不总与高评论量成正比，部分娱乐频道更偏向“一键三连”而非深入互动；频道表现应结合点赞率与评论率进行评估。

### 总体结论建议
#### 平台热度存在明显的 时间规律 与 地区聚集性；
#### “头部视频”对平台整体播放量贡献极大，内容爆款效应明显；
#### 不同频道的互动方式各异，需结合具体业务目标（涨粉 / 评论 / 转化）制定分析指标。
