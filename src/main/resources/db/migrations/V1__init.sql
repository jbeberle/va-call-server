CREATE TABLE IF NOT EXISTS VET_CALL(ID INT PRIMARY KEY AUTO_INCREMENT,
                  FULL_NAME VARCHAR(255),
                  EMAIL VARCHAR(255),
                  SERVICE VARCHAR(255),
                  BRANCH VARCHAR(255),
                  SCREEN VARCHAR(255),
                  CALL_REASON VARCHAR(255),
                  CALL_CLAIM_DESCRIPTION VARCHAR(255),
                  CLAIM_ID VARCHAR(255),
                  CLAIM_TYPE VARCHAR(255),
                  CLAIM_PHASE VARCHAR(255));

