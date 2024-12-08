begin
execute immediate'
drop table cricket';

execute immediate'
CREATE TABLE cricket (
    id      NUMBER PRIMARY KEY,
    team_a  VARCHAR2(50char),
    team_b  VARCHAR2(50char),
    winner  VARCHAR2(50char)
)';






insert into  cricket (id,team_a,team_b,winner) values (1,'westindies','srilanka','westindies');
insert into  cricket (id,team_a,team_b,winner) values (2,'india','srilanka','india');
insert into  cricket (id,team_a,team_b,winner) values (3,'australia','srilanka','australia');
insert into  cricket (id,team_a,team_b,winner) values (4,'westindies','srilanka','srilanka');
insert into  cricket (id,team_a,team_b,winner) values (5,'australia','india','australia');
insert into  cricket (id,team_a,team_b,winner) values (6,'westindies','srilanka','westindies');
insert into  cricket (id,team_a,team_b,winner) values (7,'india','westindies','westindies');
insert into  cricket (id,team_a,team_b,winner) values (8,'westindies','australia','australia');
insert into  cricket (id,team_a,team_b,winner) values (9,'westindies','india','india');
insert into  cricket (id,team_a,team_b,winner) values (10,'australia','westindies','westindies');
insert into  cricket (id,team_a,team_b,winner) values (11,'westindies','srilanka','westindies');
insert into  cricket (id,team_a,team_b,winner) values (12,'india','australia','india');
insert into  cricket (id,team_a,team_b,winner) values (13,'srilanka','newzealand','srilanka');
insert into  cricket (id,team_a,team_b,winner) values (14,'newzealand','india','india');
commit;
end;