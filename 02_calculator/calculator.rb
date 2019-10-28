#write your code here
def add(x,y)
    x+y
end

def subtract(x,y)
    x-y
end

def multiply(x,y,a=1,b=1,c=1,d=1,e=1,f=1,g=1)
    x*y*a*b*c*d*e*f*g
end

def divide(x,y)
    x/y
end

def sum(x)
    val=0
    for i in x do
        val += i
    end
    val
end

def power(x,y)
    x**y
end

def factorial(x)
    if x==0
        1
    else
        ans = x
        while x >= 2
            ans = ans*(x-1)
            x=x-1
        end
        ans
    end
end
