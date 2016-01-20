# ZCBaseModel
一个使用非常简单的Model，可以作为所有Model的基类，内部读取属性基于runtime实现，具体使用请参考例子dome

接口介绍：

初始化方法，参数为字典
- (instancetype)initWithDictionary: (NSDictionary *)dictionary;

初始化方法，参数JsonData
- (instancetype)initWithJsonData: (NSData *)jsonData;

初始化方法，参数JsonString
- (instancetype)initWithJsonString: (NSString *)jsonString;

类初始化方法，使用同上
+ (instancetype)modelWithDictionary: (NSDictionary *)dictionary;

+ (instancetype)modelWithJsonData:(NSData *)jsonData;

+ (instancetype)modelWithJsonString:(NSString *)jsonString;

赋值方法
- (void)setModelWithDictionary: (NSDictionary *)data;

将model转化为字典
- (NSDictionary *)dictionaryWithModel;

将model转化为JsonData
- (NSData *)jsonDataWithModel;

将model转化为jsonString
- (NSString *)jsonStringWithModel;

属性和字典key的映射关系
- (NSDictionary *)propertyMapDic;此方法用于class内部重写
- (void)setPropertyMapDic:(NSDictionary *)propertyMapDic;此方法用于外部赋值


将数组内的对象设置为ZCBaseModel对象使用方法

@protocol TestModel2 <NSObject>

@end

@interface TestModel1 : ZCBaseModel

@property(nonatomic, strong)TestModel2 * testModel;

将数组内的元素全部设置为TestModel2类型

@property(nonatomic, strong)NSArray <TestModel2> * testArray;