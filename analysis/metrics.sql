#热门视频浏览量Top10
select video_id,view_count
from fact_video_daily_metrics
order by view_count desc
limit 10;

#不同国家平均点赞量
select country,AVG(like_count) as avg_like
from fact_video_daily_metrics 
group by country;

#热门视频每日浏览量趋势
select snapshot_date,sum(view_count) as total_view
from fact_video_daily_metrics
group by snapshot_date
order by snapshot_date;

#视频发布在周几最多
select dayofweek(publish_date), count(*) as count
from dim_video
group by dayofweek(publish_date);

#不同国家平均点赞量、评论量
select country,
    avg(like_count) as avg_like,
    avg(comment_count) as avg_comment
from fact_video_daily_metrics
group by country;