Q1. Find Students who are registered to CSCI 220 and MATH 221
SELECT
    a.pid,
    b.cid
FROM
    registers  b,
    student    a
WHERE
        a.pid = b.pid
    AND ( b.cid LIKE 'CSCI22%'
          OR b.cid LIKE 'MATH22%' )




       PID CID       
---------- ----------
     10025 CSCI220   
     10030 CSCI220   
     10035 CSCI220   
     10090 MATH221   
     10115 MATH221   
     10020 MATH221   

6 rows selected. 



Q2. Number of volunteers at each Organization

SELECT
    student.pid,
    volunteer_work.oid,
    volunteer_work.organization
FROM
    student,
    volunteer_work;


 


       PID OID        ORGANIZATION                  
---------- ---------- ------------------------------
     12000 ORG101     Humane Society                
     10020 ORG101     Humane Society                
     10025 ORG101     Humane Society                
     10115 ORG101     Humane Society                
     10010 ORG101     Humane Society                
     10030 ORG101     Humane Society                
     10035 ORG101     Humane Society                
     10090 ORG101     Humane Society                
     13500 ORG101     Humane Society                
     12000 ORG102     Salvation Army                
     10020 ORG102     Salvation Army                

       PID OID        ORGANIZATION                  
---------- ---------- ------------------------------
     10025 ORG102     Salvation Army                
     10115 ORG102     Salvation Army                
     10010 ORG102     Salvation Army                
     10030 ORG102     Salvation Army                
     10035 ORG102     Salvation Army                
     10090 ORG102     Salvation Army                
     13500 ORG102     Salvation Army                
     12000 ORG103     Soup Kitchen                  
     10020 ORG103     Soup Kitchen                  
     10025 ORG103     Soup Kitchen                  
     10115 ORG103     Soup Kitchen                  

       PID OID        ORGANIZATION                  
---------- ---------- ------------------------------
     10010 ORG103     Soup Kitchen                  
     10030 ORG103     Soup Kitchen                  
     10035 ORG103     Soup Kitchen                  
     10090 ORG103     Soup Kitchen                  
     13500 ORG103     Soup Kitchen                  

27 rows selected. 



Q3. For what classes did the number of F's exceed the number of non F's
SELECT
    course.cid,
    course.course_name,
    final_grade.grade
FROM
    course,
    final_grade
WHERE
    final_grade.grade LIKE 'F%'


CID        COURSE_NAME                              GRADE
---------- ---------------------------------------- -----
CSCI301    Computer Science 2                       F    
CSCI220    Computer Architecture 2                  F    
CSCI411    Database Theory and Design               F    
MATH221    Calculus 1                               F    



Q4. List the class with the most A's
SELECT
    course.cid,
    course.course_name,
    final_grade.grade
FROM
    course,
    final_grade
WHERE
    final_grade.grade LIKE 'A%'


   


CID        COURSE_NAME                              GRADE
---------- ---------------------------------------- -----
CSCI301    Computer Science 2                       A    
CSCI301    Computer Science 2                       A    
CSCI301    Computer Science 2                       A    
CSCI301    Computer Science 2                       A    
CSCI301    Computer Science 2                       A    
CSCI301    Computer Science 2                       A    
CSCI301    Computer Science 2                       A    
CSCI220    Computer Architecture 2                  A    
CSCI220    Computer Architecture 2                  A    
CSCI220    Computer Architecture 2                  A    
CSCI220    Computer Architecture 2                  A    

CID        COURSE_NAME                              GRADE
---------- ---------------------------------------- -----
CSCI220    Computer Architecture 2                  A    
CSCI220    Computer Architecture 2                  A    
CSCI220    Computer Architecture 2                  A    
CSCI411    Database Theory and Design               A    
CSCI411    Database Theory and Design               A    
CSCI411    Database Theory and Design               A    
CSCI411    Database Theory and Design               A    
CSCI411    Database Theory and Design               A    
CSCI411    Database Theory and Design               A    
CSCI411    Database Theory and Design               A    
MATH221    Calculus 1                               A    

CID        COURSE_NAME                              GRADE
---------- ---------------------------------------- -----
MATH221    Calculus 1                               A    
MATH221    Calculus 1                               A    
MATH221    Calculus 1                               A    
MATH221    Calculus 1                               A    
MATH221    Calculus 1                               A    
MATH221    Calculus 1                               A    

28 rows selected. 


