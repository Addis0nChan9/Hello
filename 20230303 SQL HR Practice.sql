-- HR DB 資料查詢
-- 查詢所有部門資訊如下: 
-- 1.所在地(國家、洲省、城市) 
-- 2.部門(部門編號、部門名稱) 
-- 3.部門管理者(員工編號、員工姓名、員工職稱)



-- 好習慣：先寫出步驟，收集材料
-- 先找出"資料表"＆"資料欄"步驟如下：
-- 1. LOCATIONS(COUNTRY_ID,STATE_PROVINCE,CITY)
-- 2. DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME)
-- 3. EMPLOYEES(EMPLOYEE_ID,FIRST_NAME) -- JOB TITLE 不在 EMPLOYEES 內
-- 4. JOBS(JOB_TITLE)

-- 接著，找出資料表之間關聯的欄位
-- LOCATIONS(LOCATION_ID)DEPARTMENTS
-- DEPARTMENTS(MANAGER_ID,EMPLOYEE_ID)EMPLOYEES --部門管理者也是員工所以要連到EMPLOYEE_ID EMPLOYEES的MANAGER_ID是標上司 所以100號是老闆
-- EMPLOYEES(JOB_ID)JOBS

-- 開始將上述轉換成SQL

SELECT * FROM EMPLOYEES;
