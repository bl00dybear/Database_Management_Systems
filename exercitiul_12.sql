-- Trigger care previne stergerea tabelelor cu mai mult de un FK
create or replace trigger trg_prevenire_stergere
before drop on database
declare
    var_nr_fk number;
    var_nume_tabela varchar2(100);
    ddl_event_sql clob;
begin
    var_nume_tabela := sys.dictionary_obj_name;

    if sys.dictionary_obj_type = 'TABLE' then
        select count(*)
        into var_nr_fk
        from user_constraints
        where table_name = UPPER(var_nume_tabela)
            and constraint_type = 'R';

        if var_nr_fk > 1 then
            raise_application_error(-20001,'Stergerea tabelei ' || var_nume_tabela ||
                                           ' este interzisa deoarece are mai mult de un foreign key.');
        end if;
    end if;
end;
/