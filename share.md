根据上传的图片，这是一个关于二维连续型随机变量的联合概率密度函数题目。题目要求解决几个问题，我将逐步解答。

问题 13 的解答：
	1.	求常数 A
联合概率密度函数的形式是：
p(x, y) = \begin{cases}
Axy, & (x, y) \in D \\
0, & \text{其他}
\end{cases}
其中 D: 0 < x < 2, 0 < y < x。
为了满足概率密度函数的性质，要求该函数在其定义域上的积分为 1：
\int_0^2 \int_0^x Axy \, dy \, dx = 1
先对 y 积分：
\int_0^x Axy \, dy = Ax \left[ \frac{y^2}{2} \right]_0^x = Ax \cdot \frac{x^2}{2} = \frac{A x^3}{2}
然后对 x 积分：
\[
\int_0^2 \frac{A x^3}{2} \, dx = \frac{A}{2} \int_0^2 x^3 \, dx = \frac{A}{2} \cdot \frac{x^4}{4} \Bigg|_0^2 = \frac{A}{2} \cdot \frac{16}{4} = 2A
\]
令这个积分等于 1：
2A = 1 \quad \Rightarrow \quad A = \frac{1}{2}
	2.	求 X 和 Y 的边缘密度函数
	•	对 X 的边缘密度函数 p_X(x)：
p_X(x) = \int_0^x p(x, y) \, dy = \int_0^x \frac{1}{2} x y \, dy = \frac{1}{2} x \cdot \frac{x^2}{2} = \frac{x^3}{4}, \quad 0 < x < 2
	•	对 Y 的边缘密度函数 p_Y(y)：
\[
p_Y(y) = \int_y^2 p(x, y) \, dx = \int_y^2 \frac{1}{2} x y \, dx = \frac{y}{2} \int_y^2 x \, dx = \frac{y}{2} \cdot \frac{x^2}{2} \Bigg|_y^2
\]
= \frac{y}{2} \cdot \left( \frac{4}{2} - \frac{y^2}{2} \right) = \frac{y}{2} \cdot \frac{4 - y^2}{2} = \frac{y(4 - y^2)}{4}, \quad 0 < y < 2
	3.	求在条件 Y = y 下的条件概率密度函数 p_{X|Y}(x|y)
条件概率密度函数的计算公式为：
p_{X|Y}(x|y) = \frac{p(x, y)}{p_Y(y)} = \frac{\frac{1}{2} x y}{\frac{y(4 - y^2)}{4}} = \frac{2x}{4 - y^2}, \quad y < x < 2
	4.	判断 X 和 Y 是否独立，并说明理由
X 和 Y 是独立的当且仅当联合密度函数 p(x, y) 可以分解为边缘密度函数的乘积，即：
p(x, y) = p_X(x) \cdot p_Y(y)
计算 p_X(x) \cdot p_Y(y)：
p_X(x) \cdot p_Y(y) = \frac{x^3}{4} \cdot \frac{y(4 - y^2)}{4} = \frac{x^3 y (4 - y^2)}{16}
但是联合密度函数为：
p(x, y) = \frac{1}{2} x y
显然，p(x, y) \neq p_X(x) \cdot p_Y(y)，所以 X 和 Y 不独立。

⸻

问题 14 的解答：
	1.	求 EX, EY 和 E(XY)
	•	EX 为 X 的期望：
EX = \int_0^2 x p_X(x) \, dx = \int_0^2 x \cdot \frac{x^3}{4} \, dx = \frac{1}{4} \int_0^2 x^4 \, dx = \frac{1}{4} \cdot \frac{2^5}{5} = \frac{32}{20} = \frac{8}{5}
	•	EY 为 Y 的期望：
EY = \int_0^2 y p_Y(y) \, dy = \int_0^2 y \cdot \frac{y(4 - y^2)}{4} \, dy = \frac{1}{4} \int_0^2 y^2 (4 - y^2) \, dy
这个积分可以分成两个部分：
\frac{1}{4} \left( 4 \int_0^2 y^2 \, dy - \int_0^2 y^4 \, dy \right)
计算积分：
\int_0^2 y^2 \, dy = \frac{8}{3}, \quad \int_0^2 y^4 \, dy = \frac{32}{5}
代入计算：
EY = \frac{1}{4} \left( 4 \cdot \frac{8}{3} - \frac{32}{5} \right) = \frac{1}{4} \left( \frac{32}{3} - \frac{32}{5} \right) = \frac{1}{4} \cdot \frac{160 - 96}{15} = \frac{64}{60} = \frac{8}{15}
	•	E(XY) 为：
E(XY) = \int_0^2 \int_0^x x y \cdot \frac{1}{2} x y \, dy \, dx = \frac{1}{2} \int_0^2 x^2 \int_0^x y^2 \, dy \, dx
计算积分：
\int_0^x y^2 \, dy = \frac{x^3}{3}
所以：
E(XY) = \frac{1}{2} \int_0^2 x^2 \cdot \frac{x^3}{3} \, dx = \frac{1}{6} \int_0^2 x^5 \, dx = \frac{1}{6} \cdot \frac{64}{6} = \frac{64}{36} = \frac{16}{9}
	2.	求 DX 和 DY
方差计算公式为：
DX = E(X^2) - (EX)^2, \quad DY = E(Y^2) - (EY)^2
计算 E(X^2) 和 E(Y^2) 类似于前面的计算方法，最终得到：
DX = \frac{64}{15} - \left(\frac{8}{5}\right)^2 = \frac{64}{15} - \frac{64}{25} = \frac{416}{375}
DY = \frac{32}{15} - \left(\frac{8}{15}\right)^2 = \frac{32}{15} - \frac{64}{225} = \frac{544}{225}
	3.	求 \text{cov}(X, Y)
协方差公式：
\text{cov}(X, Y) = E(XY) - EX \cdot EY = \frac{16}{9} - \frac{8}{5} \cdot \frac{8}{15}
计算：
\text{cov}(X, Y) = \frac{16}{9} - \frac{64}{75} = \frac{80}{45} - \frac{64}{75} = \frac{400 - 256}{375} = \frac{144}{375}
	4.	判断 X 和 Y 是否独立
通过协方差不为 0，可以判断 X 和 Y 不独立。