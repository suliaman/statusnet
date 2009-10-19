alter table notice
     modify column content text comment 'update content';

alter table message
     modify column content text comment 'message content';

alter table profile
     modify column bio text comment 'descriptive biography';

alter table user_group
     modify column description text comment 'group description';

alter table file_oembed
     add column mimetype varchar(50) comment 'mime type of resource';

create table config (

    section varchar(32) comment 'configuration section',
    setting varchar(32) comment 'configuration setting',
    value varchar(255) comment 'configuration value',

    constraint primary key (section, setting)

) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin;

create table user_role (

    user_id integer not null comment 'user having the role' references user (id),
    role    varchar(32) not null comment 'string representing the role',
    created datetime not null comment 'date the role was granted',

    constraint primary key (user_id, role)

) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin;