

CREATE TABLE instructor_detail (
  id int(11) AUTO_INCREMENT,
  youtube_channel varchar(128) ,
  hobby varchar(45),
  PRIMARY KEY (`id`)
) ;


CREATE TABLE instructor (
  id int(11) AUTO_INCREMENT,
  first_name varchar(45) ,
  last_name varchar(45),
  email varchar(45),
  instructor_detail_id int(11),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`instructor_detail_id`) REFERENCES `instructor_detail` (`id`)
) 




CREATE TABLE course (
  id int(11)  AUTO_INCREMENT,
  title varchar(128),
  instructor_id int(11),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`) 
)






CREATE TABLE review (
  id int(11) NOT NULL AUTO_INCREMENT,
  comment varchar(256),
  course_id int(11) ,
   PRIMARY KEY (`id`),
  FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) 
)




CREATE TABLE course_student (
  course_id int(11) NOT NULL,
  student_id int(11) NOT NULL,
  PRIMARY KEY (`course_id`,`student_id`),
  FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) 
 ) ;





CREATE TABLE student(
  id int(11) NOT NULL AUTO_INCREMENT,
  first_name varchar(45) DEFAULT NULL,
  last_name varchar(45) DEFAULT NULL,
  email varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
)


