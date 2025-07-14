# youtube_analysis_project

## 项目简介
### 本项目基于 YouTube 视频数据集，搭建离线数据仓库，分析不同国家、分类的视频热度趋势，使用 MySQL 构建数据仓库，FineBI 展示可视化结果。

## 目标
### 构建一个离线数据仓库，用于分析 YouTube 各地区热门视频的趋势和标签分布；  
### 对热门视频的标题、标签、观看量、点赞量等进行多维度分析；  
### 最终实现数据可视化展示（Tableau、PowerBI 或 FineBI 等）。

## 项目结构
### data/  #原始数据集（CSV）
### ETL/
###   claean_data.py   #处理缺少值、转换数据类型
###   load_to_db.py   #导入MySQL脚本
### warehose/
###   create_tables.sql   #建表语句（事务表/维度表）
###   dimension_data.csv   #创建的维度表数据
### analysis
###   exploratory.ipynb   #探索性分析
###   metrics.sql   #SQL指标查询
### dashboard/   #可视化相关文件
### README.md


