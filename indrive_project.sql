-- 1. Retrieve all successful bookings:
create view successful_booking as
select * from bookings where booking_status = 'Success';

select * from successful_booking;

-- 2. Find the average ride distance for each vehicle type:
create view avg_ride_distance_each_vehicle as
select vehicle_type, avg(ride_distance) from bookings group by vehicle_type;

select * from avg_ride_distance_each_vehicle;

-- 3. Get the total number of cancelled rides by customers:
create view canceled_by_customer as
select count(*) from bookings where booking_status = 'Canceled by Customer';

select * from canceled_by_customer;

-- 4. List the top 5 customers who booked the highest number of rides:
create view top_5_customer as
select customer_id, count(booking_id) as total_rides from bookings group by customer_id order by total_rides desc limit 5; 

select * from top_5_customer;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view canceled_by_driver_pcri as
select count(*) from bookings where cancelled_rides_by_driver = 'Personal & Car related issue';

select * from canceled_by_driver_pcri;

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view min_max_driver_rating_ps as
select max(driver_ratings), min(driver_ratings) from bookings where vehicle_type = 'Prime Sedan';

select * from min_max_driver_rating_ps;

-- 7. Retrieve all rides where payment was made using UPI:
create view upi_payment_rides as
select * from bookings where payment_method = 'UPI';

select * from upi_payment_rides;

-- 8. Find the average customer rating per vehicle type:
create view avg_customer_rating_pv as
select vehicle_type, avg(customer_rating::real) from bookings group by vehicle_type;

select * from avg_customer_rating_pv;

-- 9. Calculate the total booking value of rides completed successfully:
create view total_booking_rides_value as
select sum(booking_value) as total_booking_value from bookings where booking_status = 'Success'

select * from total_booking_rides_value;

-- 10. List all incomplete rides along with the reason:
create view incomplete_rides_w_reason as
select date, time, booking_id, booking_status, vehicle_type, incomplete_rides_reason from bookings where incomplete_rides = 'Yes';

select * from incomplete_rides_w_reason;