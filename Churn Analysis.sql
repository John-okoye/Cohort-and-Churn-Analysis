SELECT
  DATE_TRUNC(subscription_start, WEEK) AS subscription_start,
  COUNT(1) AS subscriptions_week_0,
  COUNTIF(subscription_end > DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 1 WEEK)
    OR subscription_end IS NULL) AS subscriptions_week_1,
  COUNTIF(subscription_end > DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 2 WEEK)
    OR subscription_end IS NULL) AS subscriptions_week_2,
  COUNTIF(subscription_end > DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 3 WEEK)
    OR subscription_end IS NULL) AS subscriptions_week_3,
  COUNTIF(subscription_end > DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 4 WEEK)
    OR subscription_end IS NULL) AS subscriptions_week_4,
  COUNTIF(subscription_end > DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 5 WEEK)
    OR subscription_end IS NULL) AS subscriptions_week_5,
  COUNTIF(subscription_end > DATE_ADD(DATE_TRUNC(subscription_start, WEEK), INTERVAL 6 WEEK)
    OR subscription_end IS NULL) AS subscriptions_week_6
FROM
  turing_data_analytics.subscriptions
GROUP BY
  1
