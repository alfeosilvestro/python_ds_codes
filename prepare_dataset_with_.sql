SELECT
    "State",
    "Account Length",
    "Area Code",
    "Phone",
    "Int'l Plan" as "Intl Plan",
    "VMail Plan",
    "VMail Message",
    "Day Mins",
    "Day Calls",
    "Day Charge",
    "Eve Mins",
    "Eve Calls",
    "Eve Charge",
    "Night Mins",
    "Night Calls",
    "Night Charge",
    "Intl Mins",
    "Intl Calls",
    "Intl Charge",
    "CustServ Calls",
    "Churn",
    random() AS "splitter"
  FROM (
    SELECT
        "State",
        "Account Length",
        "Area Code",
        "Phone",
        "Int'l Plan",
        "VMail Plan",
        "VMail Message",
        "Day Mins",
        "Day Calls",
        "Day Charge",
        "Eve Mins",
        "Eve Calls",
        "Eve Charge",
        "Night Mins",
        "Night Calls",
        "Night Charge",
        "Intl Mins",
        "Intl Calls",
        "Intl Charge",
        "CustServ Calls",
        CASE
          WHEN "Churn" = 'False.' THEN CAST('False' AS VARCHAR(200))
          ELSE CASE
            WHEN "Churn" = 'True.' THEN CAST('True' AS VARCHAR(200))
            ELSE "Churn"
          END
        END AS "Churn"
      FROM (
        SELECT
            "State",
            "Account Length",
            "Area Code",
            "Phone",
            "Int'l Plan",
            "VMail Plan",
            "VMail Message",
            "Day Mins",
            "Day Calls",
            "Day Charge",
            "Eve Mins",
            "Eve Calls",
            "Eve Charge",
            "Night Mins",
            "Night Calls",
            "Night Charge",
            "Intl Mins",
            "Intl Calls",
            "Intl Charge",
            "CustServ Calls",
            "Churn?" AS "Churn"
          FROM "CHURNPREDICTIONONPYTHON_customers_history_db" "__input_table"
        ) "__dku_before_xxx"
    ) "__dku_before_xxx"
