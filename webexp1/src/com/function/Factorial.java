package com.function;

public class Factorial {
    public long Factorial(int n){         //计算并返回正整数n的阶乘
        if(n == 0){
            return 1;
        }
        else {
            int sum = 1;
            for(int i = n ; i > 0 ; i--){
                sum *= i;
            }
            return sum;
        }
    }
}
