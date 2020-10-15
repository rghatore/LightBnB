-- adding data to lightbnb tables

INSERT INTO users (name, email, password)
VALUES ('Michael Schumacher', 'schumi@greatest.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
       ('Rafael Nadal', 'rafa@french.open', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
       ('Naomi Osaka', 'osaka@us.open', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
       ('Sachin Tendulkar', 'sachin@sach.in', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
       ('Gal Gadot', 'wonder@woman.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (
  owner_id,
  title,
  description,
  thumbnail_photo_url,
  cover_photo_url,
  cost_per_night,
  parking_spaces,
  number_of_bathrooms,
  number_of_bedrooms,
  country,
  street,
  city,
  province,
  post_code,
  active)
VALUES (
  1,
  'Racing Track',
  'description',
  'https://images.unsplash.com/photo-1597919265145-74b2c315d520?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1594041037574-9480e67ab788?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  '350',
  '10',
  '3',
  '5',
  'Germany',
  '91 wins',
  'Edmonton',
  'Alberta',
  'X0X0X0',
  TRUE
),
(
  3,
  'Courtside',
  'description',
  'https://images.unsplash.com/photo-1596549969402-30040dc1d4b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1568663469495-b09d5e3c2e07?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  '300',
  '6',
  '2',
  '3',
  'US',
  '2 times',
  'Toronto',
  'Ontario',
  'X1W0Y2',
  TRUE
),
(
  4,
  'Stadium',
  'description',
  'https://images.unsplash.com/photo-1587385789097-0197a7fbd179?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1585822754398-04873d4e1f50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1220&q=80',
  '303',
  '7',
  '3',
  '3',
  'India',
  '100 not out',
  'Mumbai',
  'India',
  'S5R2T2',
  TRUE
),
(
  5,
  'Wonderful',
  'description',
  'https://images.unsplash.com/photo-1582836187212-8e11b734fb71?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1574056067290-0841d2d4833d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80',
  '400',
  '5',
  '5',
  '5',
  'Themyscira',
  '123 Trinity',
  'Comics',
  'DC',
  'W0N0E2',
  TRUE
);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2020-08-22', '2020-08-31', 2, 2),
       ('2020-08-25', '2020-08-27', 3, 4),
       ('2020-09-01', '2020-09-05', 2, 5),
       ('2020-09-14', '2020-09-28', 1, 3);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (4, 3, 2, 4, 'messages'),
       (5, 2, 3, 5, 'messages'),
       (2, 2, 1, 3, 'messages'),
       (3, 1, 4, 4, 'messages');

