# Grouping data
## 집계 함수 ( Aggregate function)
- 여러개의 값을 한개의 값으로 만듦.
- 평균, 개수, 최대, 최소, 합 등
- 파이썬에서 구현하는것보다는 데이터베이스에서 먼저 계산하는게 대체로 효율이 좋음
- 정밀계산이 힘들거나 데이터베이스에 접근이 힘든 경우에는 파이썬에서 

## GROUP BY
- 집계함수랑 같이 where 절 뒤에 사용


# Changing data
## INSERT


# DELTE



## SOFT DELETE
- 지우고서는 지웠다는 표시만을 하는 삭제
- is_deleted 라는 이름의 column을 주고 초기값은 falthy값(0), 지우면 1
- 조회 할떄는 is_deleted 조건
## HARD DELETE