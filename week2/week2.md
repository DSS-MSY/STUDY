# Logistic Regression
## 이론:
1. odds 비로부터 logit 함수 도출, logistic함수는 logit함수의 역함수
odds의 비 = 성공할 확률 / 실패할 확률
logit = log(odds의 비)

2. 기본의 OLS에서 RSS를 사용해 최소오차인 계수를 찾는 것과 달리 cost함수를 다른 것을 씀
이유: cost 함수가 non-convex하기 때문에, global minimum을 찾알 수 없고 SGD를 사용할 수가 없음, 쓴다고 해도 local minimum 만 찾게 될것임
https://hunkim.github.io/ml/lec5.pdf (15페이지 이후 내용쭉~)

## 코딩:
로지스틱함수 구현, cost함수 사용해서 최적화 하는 것 까지만 
