
x = 5
y0 = 7
yf = 8
dy = abs(y0-yf)
t= 5
g = 9.81
V_0x= x/t
V_0y = (dy+((1/2)*(g.*(t.^2))))/t
V_0= sqrt(((V_0y).^2)+((V_0x).^2))
theta = asind((V_0x)/(V_0))