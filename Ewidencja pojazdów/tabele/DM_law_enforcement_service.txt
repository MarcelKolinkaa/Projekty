CREATE TABLE DM_law_enforcement_service(
    id          NUMBER NOT NULL primary key ,
     Pesel number not null,
     badge_number number,
     type_of_law_enforcement varchar2(50char),
    rank varchar2(50char),
    constraint DM_citizens_FK_LES foreign key (Pesel)
    references DM_Citizens (pesel)
 );