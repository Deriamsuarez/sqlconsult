CREATE TABLE "user" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int,
  "gender" varchar(1),
  "id_role" uuid NOT NULL
);

CREATE TABLE "course" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text,
  "level" varchar NOT NULL,
  "teacher_id" uuid NOT NULL,
  "category_id" uuid NOT NULL,
  "video_id" uuid
);

CREATE TABLE "course_video" (
  "id" uuid PRIMARY KEY,
  "video_title" varchar NOT null,
  "url" varchar not null
);

CREATE TABLE "category" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "role" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "course_joined" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "course_id" uuid
);

ALTER TABLE "user" ADD FOREIGN KEY ("id_role") REFERENCES "role" ("id");

ALTER TABLE "course_joined" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");

ALTER TABLE "course_joined" ADD FOREIGN KEY ("course_id") REFERENCES "course" ("id");

ALTER TABLE "course" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");

ALTER TABLE "course" ADD FOREIGN KEY ("teacher_id") REFERENCES "user" ("id");

ALTER TABLE "course" ADD FOREIGN KEY ("video_id") REFERENCES "course_video" ("id");


insert into role (
id,
name
)values(
'83641824-00ea-4c9c-bbe6-ce6103f7865e',
'admin'), (
'80a574cc-7d1b-41a1-af77-528898c310bd',
'student'),(
'ef19f7c1-03ab-4a18-9c8b-997c9211bb7f',
'teacher');

insert into "user" (
id,
name,
email,
password,
age,
gender,
id_role
)values(
'bd935dd2-d287-4bc9-9830-89bb22e8c114',
'Deriam Suarez',
'deriam@gmail.com',
'123456',
25,
'M',
'83641824-00ea-4c9c-bbe6-ce6103f7865e'
),(
'2b57d8ba-5aa7-4af8-8048-339c151eb12c',
'Saul Suarez',
'saul@gmail.com',
'123saul',
22,
'M',
'80a574cc-7d1b-41a1-af77-528898c310bd'
),(
'728b8faa-bd79-4890-b299-2d1f0041298a',
'Glendaliz Rodriguez',
'glendaliz@gmail.com',
'12glen',
24,
'F',
'ef19f7c1-03ab-4a18-9c8b-997c9211bb7f'
),(
'3b2acfa8-5a3c-4667-ae30-f7e8fbf3ae61',
'Alan Suarez',
'alan@gmail.com',
'123456',
22,
'M',
'83641824-00ea-4c9c-bbe6-ce6103f7865e'
);


insert into category(
id,
name
)values(
'ac354522-6aaa-4e47-8df7-45c81c75f6c0',
'Medicine'
),
(
'bc085ffb-4a51-4bdd-83cf-fefadd7bd3bf',
'Software Developer'
),( 
'c83d6546-3435-43e4-9124-6adaec48f0d5',
'Data Scientist');

insert into course_video(
id,
video_title,
url
)values(
'c44b6ed2-5aa2-4b7c-a382-6ef689de8057',
'surgery',
'https://www.youtube.com/watch?v=VlWh8f9BuZY'
),(
'1c8c02f9-c249-497b-9269-4c94c92a2201',
'CCNA',
'https://www.youtube.com/watch?v=RRkmu9x1zNI'
);


insert into course (
id,
title,
description,
level,
teacher_id,
category_id,
video_id
)values(
'74095e46-e08d-458d-a4b4-da95fbc944b4',
'CCNA',
'Fundamentos de redes con CISCO',
'begginer',
'728b8faa-bd79-4890-b299-2d1f0041298a',
'c83d6546-3435-43e4-9124-6adaec48f0d5',
'1c8c02f9-c249-497b-9269-4c94c92a2201'
),(
'7adb2f6c-bcff-460a-805e-c59e689eab6b',
'Surgery',
'Introduce to surgery',
'advance',
'728b8faa-bd79-4890-b299-2d1f0041298a',
'ac354522-6aaa-4e47-8df7-45c81c75f6c0',
'c44b6ed2-5aa2-4b7c-a382-6ef689de8057'
),(
'a3338e49-2323-4929-8ba6-038fd3870364',
'Technical Hacking',
'Introduce to hacking',
'Intermediant',
'728b8faa-bd79-4890-b299-2d1f0041298a',
'bc085ffb-4a51-4bdd-83cf-fefadd7bd3bf',
'1c8c02f9-c249-497b-9269-4c94c92a2201'
),(
'80c190f6-b2c0-4529-aa18-84ea96d7b50f',
'CCNA+',
'Fundamentos de redes con CISCO+',
'advance',
'728b8faa-bd79-4890-b299-2d1f0041298a',
'c83d6546-3435-43e4-9124-6adaec48f0d5',
'1c8c02f9-c249-497b-9269-4c94c92a2201'
),(
'4a75e9f8-83f2-4cc2-8257-0762e00ca29c',
'Drugsstore administration',
'Introduce to admin',
'advance',
'728b8faa-bd79-4890-b299-2d1f0041298a',
'ac354522-6aaa-4e47-8df7-45c81c75f6c0',
'1c8c02f9-c249-497b-9269-4c94c92a2201'
),(
'3b2acfa8-5a3c-4667-ae30-f7e8fbf3ae61',
'Technical Hacking ethical',
'Introduce to hacking',
'advance',
'728b8faa-bd79-4890-b299-2d1f0041298a',
'bc085ffb-4a51-4bdd-83cf-fefadd7bd3bf',
'1c8c02f9-c249-497b-9269-4c94c92a2201'
);

insert into course_joined (
id,
user_id,
course_id
)values(
'f12a2e68-f271-4aed-ace2-39dfc55c7a2b',
'bd935dd2-d287-4bc9-9830-89bb22e8c114',
'80c190f6-b2c0-4529-aa18-84ea96d7b50f'
),(
'cd36fe30-be5d-4bc5-a391-30a739d0b76e',
'728b8faa-bd79-4890-b299-2d1f0041298a',
'74095e46-e08d-458d-a4b4-da95fbc944b4'
);

