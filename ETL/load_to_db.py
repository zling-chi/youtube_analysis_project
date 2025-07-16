from sqlalchemy import create_engine
from sqlalchemy.exc import SQLAlchemyError

from clean_data import sample

engine = create_engine('mysql+pymysql://root:123456@localhost/youtube_hot_video_data')

try:
    # 将数据写入数据库
    sample.to_sql('youtube_hot_video_sample', con=engine, if_exists='replace', index=False)
    print("数据成功写入数据库！")
except SQLAlchemyError as e:
    print("写入数据库时出错：", e)
    engine.dispose()