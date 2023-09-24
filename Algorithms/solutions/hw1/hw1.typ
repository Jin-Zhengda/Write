1.证： \

下面证明$f(n) = sum_(i = 1)^(n) i^2 = 1 / 6 n(n + 1)(2n + 1)$, \

当$n = 1$时, $f(1) = 1$, \

假设$n = k$时, $f(n) = 1 / 6 n(n + 1)(2n + 1)$成立,\

当$n = k + 1$时, 
$
f(n + 1) & = f(n) + (n + 1)^2 \
         & = 1 / 6 n(n + 1)(2n + 1) + (n + 1)^2 \
         & = 1 / 6 (n + 1)(n + 1 + 1)(2(n + 1) + 1)
$
从而$f(n) = 1 / 6 n(n + 1)(2n + 1)$

故$f(n) = Theta(n^3)$

\

2.解：\
(1)
$T(n) = O(n)$ \

即证$exists c, n_0 > 0, s.t. 当 n > n_0, T(n) <= c n$ \ 

假设$n < k$时均成立, \

当$n = k$时， \

$
T(k) = T(k/2) + k <= c k/2 + k = (c/2 + 1)k <= c k, space c >= 2,
$
即为$T(n) = O(n)$ \

$T(n) = Omega(n)$ \ 

即证$exists c, n_0 > 0, s.t. 当 n > n_0, T(n) >= c n$ \

假设$n < k$时均成立, \

当$n = k$时，\

$
T(k) = T(k/2) + k >= c k/2 + k  = (c/2 + 1)k >= c k, space c <= 2,
$

即为$T(n) = Omega(n)$ \

(2)
$T(n) = O(n log^2 n)$ \

即证$exists c, n_0 > 0, s.t. 当 n > n_0, T(n) <= c n log^2 n$ \ 

假设$n < k$时均成立, \

当$n = k$时,
$
T(k) & = 2T(k/2) + k log k <= c k/2 log^2 k/2 + k log k \
     & = c k log^2 k + (1 - 2c log 2)n log n + c n log^2 2 \
     & <= c k log^2 k, space c = 1, n_0 >= 10,
$
即为$T(n) = O(n log^2 n)$ \

$T(n) = Omega(n log^2 n)$ \ 

即证$exists c, n_0 > 0, s.t. 当 n > n_0, T(n) >= c n log^2 n$ \

假设$n < k$时均成立, \

当$n = k$时,
$
T(k) & = 2T(k/2) + k log^2 k >= c k/2 log^2 k/2 + k log k \
     & = c k log^2 k + (1 - 2c log 2)n log n + c n log^2 2 \
     & >= c k log^2 k, space c = 1/2, n_0 >= 5,
$

即为$T(n) = Omega(n log^2 n)$ \

3.证: \

对于$forall x > -1, x > ln(x + 1)$, \

从而
$
1 + 1/2 + 1/3 + ... + 1/n & >= ln(2/1) + ln(3/2) + ... + ln((n + 1)/n) \
                          & = ln(2/1 dot.op 3/2 dot.op ... dot.op (n + 1)/n) \
                          & = ln(n + 1)
$

4.解: \
$T(n) = O(n^2)$ \

即证$exists c, n_0 > 0, s.t. 当 n > n_0, T(n) <= c n^2$ \ 

假设$n < k$时均成立, \

当$n = k$时， \

$
T(k) = 2T(k/2) + k^2 <= c (k/2)^2 + k^2 = (c/4 + 1)k^2 <= c k^2, space c >= 4/3,
$
即为$T(n) = O(n^2)$ \

$T(n) = Omega(n^2)$ \ 

即证$exists c, n_0 > 0, s.t. 当 n > n_0, T(n) >= c n^2$ \

假设$n < k$时均成立, \

当$n = k$时，\

$
T(k) = 2T(k/2) + k^2 >= c (k/2)^2 + k^2  = (c/4 + 1)k^2 >= c k^2, space c <= 4/3,
$

即为$T(n) = Omega(n^2)$ \

5.解: \

$T(n) = Omega(n log n)$ \ 

即证$exists m, n_0 > 0, s.t. 当 n > n_0, T(n) >= m n log n$ \

假设$n < k$时均成立, \

当$n = k$时，\

$
T(k) & = T(k/3) + T(frac(2k, 3)) + c k \
     & >= m c k/3 log k/3 + m c frac(2k, 3) log frac(2k, 3) + c k \
     & = c m k log k + (2/3 log 2 - log 3)c m k + c k \
$
当$c <= 1$, 取$m < frac(1, 3 log 3 - 2 log 2)$, 即有$T(k) >= k log k$, \

当$c > 1$, 取$m > frac(1, 3 log 3 - 2 log 2), n_0 = 10$, 即有$T(k) >= k log k$,

即为$T(n) = Omega(n log n)$ \
