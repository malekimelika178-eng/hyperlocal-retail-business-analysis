-- Assumes CSVs have been loaded into customer_order, order_stop and retailer.
-- 1. Delivery success rate by zone
SELECT zone, COUNT(*) AS orders, ROUND(100.0*COUNT(*) FILTER(WHERE order_status='Delivered')/COUNT(*),1) AS success_pct FROM customer_order GROUP BY zone;
-- 2. Delivery performance by speed
SELECT delivery_speed, COUNT(*) AS orders, ROUND(AVG(total_elapsed_min),1) AS avg_elapsed_min FROM customer_order GROUP BY delivery_speed;
-- 3. Multi-store complexity
SELECT retailer_count, COUNT(*) AS orders, ROUND(AVG(total_elapsed_min),1) AS avg_elapsed_min, ROUND(AVG(partner_payout_usd),2) AS avg_partner_payout FROM customer_order GROUP BY retailer_count ORDER BY retailer_count;
-- 4. Refund exposure by outcome
SELECT order_status, COUNT(*) AS orders, SUM(refund_amount_usd) AS refund_total FROM customer_order GROUP BY order_status;
-- 5. Partner wait-time bands
SELECT CASE WHEN retailer_wait_time_min<5 THEN '<5 min' WHEN retailer_wait_time_min<15 THEN '5-14 min' ELSE '15+ min' END AS wait_band, COUNT(*) AS orders, ROUND(AVG(partner_payout_usd),2) AS avg_payout FROM customer_order GROUP BY 1;
-- 6. Hourly demand
SELECT EXTRACT(HOUR FROM order_datetime) AS order_hour, COUNT(*) AS order_count FROM customer_order GROUP BY 1 ORDER BY 1;
-- 7. Retailer stop exceptions
SELECT retailer_id, retailer_name, COUNT(*) AS stops, COUNT(*) FILTER(WHERE stop_status<>'Ready / collected') AS exceptions FROM order_stop GROUP BY retailer_id,retailer_name ORDER BY exceptions DESC;
-- 8. Membership mix
SELECT membership_order, COUNT(*) AS orders, ROUND(AVG(customer_delivery_fee_usd),2) AS avg_fee FROM customer_order GROUP BY membership_order;
-- 9. Simplified contribution proxy (not profit)
SELECT delivery_speed, ROUND(AVG(customer_delivery_fee_usd+distance_surcharge_usd+retailer_commission_usd+retailer_transaction_fee_usd-partner_payout_usd-payment_processing_cost_usd-refund_amount_usd),2) AS avg_contribution_proxy FROM customer_order GROUP BY delivery_speed;
-- 10. Cancellation rate by zone
SELECT zone, ROUND(100.0*COUNT(*) FILTER(WHERE order_status='Cancelled')/COUNT(*),1) AS cancellation_pct FROM customer_order GROUP BY zone;
