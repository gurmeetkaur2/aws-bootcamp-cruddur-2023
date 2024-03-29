-- this file was manually created
INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('Andrew Brown', 'andrewbrown', 'andrew@exampro.co', 'MOCK'),
  ('Andrew Bayko', 'bayko', 'bayko@test.com', 'MOCK'),
  ('Gurmeet Kaur', 'gurmeetbatra', 'gurmeetbatra@gmail.com', 'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'gurmeetbatra' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )