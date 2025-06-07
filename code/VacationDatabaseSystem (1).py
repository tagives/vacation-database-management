import mysql.connector

connection = mysql.connector.connect(
    host="localhost",  user="root", password="student", database="VacationDatabaseSystem" )
cursor = connection.cursor()

queries = [
    "UPDATE Voucher SET status = 'Used' WHERE voucher_id = 50001;",
    "DELETE FROM Voucher WHERE status = 'Used';",
    "DELETE FROM Voucher WHERE status = 'Expired';",
    "ALTER TABLE Accommodation ADD COLUMN room_type VARCHAR(50) DEFAULT 'Standart';",
    "INSERT INTO Accommodation (accommodation_id, customer_id, hotel_id, check_in_date, check_out_date, total_price, payment_type, room_type) VALUES (501, 27, 15, '2025-06-01', '2025-06-07', 1200.00, 'Credit', 'Standart');",
    "UPDATE Hotels SET hotel_type='Suite' WHERE hotel_id = 28;",
    "INSERT INTO Hotels (hotel_id, hotel_name, hotel_type, room_count, price_per_night, location, meal_services) VALUES (401, 'Flora Suite Hotel', 'Suite', 70, 350.00, 'Miami, USA', 'All-inclusive');",
    "DELETE FROM Insurance WHERE coverage_details='Health';",
    "ALTER TABLE Insurance ADD COLUMN insurance_provider VARCHAR(100);",
    "SELECT continent, SUM(location_id IS NOT NULL) AS destination_count FROM Destinations GROUP BY continent;",
    "UPDATE Activity SET participant_limit = 30 WHERE activity_id = 22;",
    "SELECT AVG(ticket_price) AS average_price FROM Avticity;",
    "INSERT INTO Activity (activity_id, hotel_id, activity_date, location_id, participant_limit, ticket_price, is_recurring, age_restriction) VALUES (29, 1, '2025-05-05 15:00:00', 1011, 80, 90.00, FALSE, '+18');",
    "DELETE FROM Activity WHERE activity_id = 29;",
    "CREATE VIEW ActivityCustomers AS SELECT c.customer_id, c.first_name, c.last_name, r.status FROM Customers c JOIN Reservations r ON c.customer_id = r.customer_id WHERE r.status = 'Active';",
    "INSERT INTO Reservations (reservation_id, customer_id, accommodation_id, reservation_date, status) VALUES (7001, 1, 3, '2024-07-08', 'Active'), (7002, 2, 3, '2024-01-05', 'No Reservation Yet');",
    "UPDATE Reservations SET status = 'Cancelled' WHERE reservation_id = 7001;",
    "DELETE FROM Reservations WHERE reservation_id = 7001;",
    "INSERT INTO Destinations VALUES (2001, 'Bolu', 'Türkiye', 'Europe');",
    "DELETE FROM Destinations WHERE location_id = 2001;",
    "UPDATE Destinations SET city = 'Barcelona' WHERE location_id = 1024;",
    "SELECT continent, SUM(location_id IS NOT NULL) AS destination_count FROM Destinations GROUP BY continent;",
    "UPDATE Customers SET birth_date = '2002-06-25 WHERE customer_id = 29';",
    "DELETE FROM Customers WHERE customer_id = 29;",
    "ALTER TABLE Customers ADD COLUMN customer_type ENUM('Regular', 'VIP', 'New') DEFAULT 'Regular';",
    "ALTER TABLE Customers DROP COLUMN customer_type;",
]

for query in queries:
    try:
        cursor.execute(query)
        connection.commit()
        print(f"Query executed successfully: {query}")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        print(f"Failed query: {query}")
cursor.close()
connection.close()