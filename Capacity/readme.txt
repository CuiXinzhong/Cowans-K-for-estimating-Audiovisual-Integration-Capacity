代码以一个SOA条件，变化个数上线4为示例

Function中存放了计算Capacity所需的函数

ExampleData是实验获取的一个SOA条件的原始正确率，其行代表被试，列代表每个被试分别在变化数为1,2,3,4下的正确率

将实验数据按ExampleData的格式覆盖ExampleData源文件

运行Cowans_K主程序即可在工作区得到result变量

result中bestfitp1、bestfitp2、bestfitp3、bestfitp4、为修正后的正确率
result中K为容量结果
result中SS为拟合的最小误差