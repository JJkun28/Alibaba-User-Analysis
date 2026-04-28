# E-commerce Data Schema
Table name: user_behavior
Data Volume: > 100 Million rows

Columns:
- user_id (int): 用户唯一标识
- item_id (int): 商品唯一标识
- category_id (int): 商品所属品类 ID
- behavior_type (string): pv (浏览), fav (收藏), cart (加购), buy (购买)
- timestamp (int): 行为时间戳
- datetime (DATETIME): [ETL新增清洗字段] 已转换为北京时间 (UTC+8) 的标准日期时间 (YYYY-MM-DD HH:MM:SS)

AI Generation Constraints:
- 编写 SQL 时，严禁捏造枚举值，用户行为必须限定在 pv/fav/cart/buy 之中。
- 涉及时间维度的聚合查询，禁止操作 timestamp，必须强制使用 `datetime` 字段进行 DATE() 转换或 DATEDIFF 计算。