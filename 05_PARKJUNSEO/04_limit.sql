-- ==============================
-- LIMIT
-- ==============================
-- LIMIT 절은 SELECT문의 결과 집합에서 반환할 행의 수를 제한하는데 사용된다.
-- Top-N분석, 페이징 처리에 응용할 수 있다. (상위 N개만 보기)

# LIMIT [offset,] row_count;
-- offset : 시작할 행의 번호(인덱스 체계)
-- row_count : 이후 행부터 반환 받을 행의 개수

-- 전체 행 조회
SELECT
       menu_code
     , menu_name
     , menu_price
  FROM
       tbl_menu
 ORDER BY
       menu_price DESC ;

-- 2번 행부터 5개 행 조회
SELECT
       menu_code
     , menu_name
     , menu_price
  FROM
       tbl_menu
 ORDER BY
       menu_price DESC
 LIMIT 1, 5;

 -- 상위 다섯 줄의 행만 조회
SELECT
       menu_code
     , menu_name
     , menu_price
  FROM
       tbl_menu
 ORDER BY
       menu_price DESC
     , menu_name ASC
 LIMIT 0, 5;

-- 페이징 처리
# 21개의 데이터(행)가 있고, 이걸 5개씩 묶어서 5페이지 처리

-- 1페이지
SELECT
       *
  FROM
       tbl_menu
 ORDER BY
       menu_code
 LIMIT 0, 5;

-- 2페이지
SELECT
       *
  FROM
       tbl_menu
 ORDER BY
       menu_code
LIMIT 5, 10;
