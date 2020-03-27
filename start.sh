#!/bin/bash

Hynix="Hynix"
Samsung="Samsung"
echo  > /home/work/tool/run.log
echo `date`
for loop in 0 1 2 3 4 5 6 7 8 9
do
{
	arr[$loop]=`/home/work/tool/amdmemtweak --i $loop --c | grep Memory:`
	if [[ ${arr[$loop]} =~ $Hynix ]]
	then
        echo find Hynix Mem
        bash /home/work/tool/setPPT.sh $loop /home/work/tool/V56PPT965900800
		/home/work/tool/amdmemtweak --i $loop --REF 17000
	elif [[ ${arr[$loop]} =~ $Samsung ]]
	then
		echo find Samsung Mem
        bash /home/work/tool/setPPT.sh $loop /home/work/tool/V56PPT965900800
		/home/work/tool/amdmemtweak --i $loop --REF 12000 --RCDRD 12
	else
		bash /home/work/tool/setPPT.sh $loop /home/work/tool/V56PPT965900800
		/home/work/tool/amdmemtweak --i $loop --REF 15600
	fi
}
done


#环境变量
# echo $PATH
#自定义变量hello
# hello="hello world"
# echo $hello
# 传递参数 $#参数个数
# echo $0
# 数组
# my_array=(A B "C" D)
# array_name[0]=value0
# array_name[1]=value1
# array_name[2]=value2

# echo "第一个元素为: ${my_array[0]}"
# echo "数组的元素为: ${my_array[*]}"

# 计算
# val=`expr 2 + 2`
# echo "两数之和为 : $val"

# 关系运算符
# -eq相等返回 true。-ne不相等返回 true. -gt -lt -ge -le !布尔 &&逻辑AND ||逻辑OR

# 字符串运算符
# = != -z -n $

# 文件测试运算符
# -f file	检测文件是否是普通文件 -e file 检测文件（包括目录）是否存在，如果是

# 显示
# 显示命令执行结果 echo `date`
# 显示变量 read name 
# 显示普通字符串 echo "It is a test"

# test 命令
# num1=100
# num2=100
# if test $[num1] -eq $[num2]
# then
#     echo '两个数相等！'
# else
#     echo '两个数不相等！'
# fi

# for 
# for loop in 1 2 3 4 5
# do
#     echo "The value is: $loop"
# done

# 函数
# demoFun(){
#     echo "这是我的第一个 shell 函数!"
# }
# echo "-----函数开始执行-----"
# demoFun
# echo "-----函数执行完毕-----"

# 读取系统显示卡信息

exit 0
