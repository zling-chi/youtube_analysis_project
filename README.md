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
####   --sample.csv   
#### ETL/
####   --claean_data.py   #处理缺少值、转换数据类型
####   --load_to_db.py   #导入MySQL脚本
#### warehose/
####   --create_tables.sql   #建表语句（事务表/维度表）
####   --insert_dimension_data.csv   #创建的维度表数据
#### analysis/
####   --exploratory.ipynb   #数据分析
####   --metrics.sql   #SQL指标查询
#### dashboard/   #可视化文件（PowerBI）
#### README.md


