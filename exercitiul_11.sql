create or replace trigger trg_inserare_transport
before insert on transporturi
for each row
declare
    var_nr_clienti number;
    var_nr_soferi number;
    var_nr_camioane number;
    var_nr_marfuri number;
begin
    select count(*) into var_nr_clienti
    from clienti
    where id_client = :new.id_client;
    dbms_output.PUT_LINE(:new.id_client);

    if var_nr_clienti = 0 then
        raise_application_error(-20001, 'Introduceti mai intai clientul în baza de date.');
    end if;

    select count(*) into var_nr_soferi
    from soferi
    where id_sofer = :new.id_sofer;

    if var_nr_soferi = 0 then
        raise_application_error(-20002, 'Introduceti mai intai șoferul în baza de date.');
    end if;

    select count(*) into var_nr_camioane
    from camioane
    where id_camion = :new.id_camion;

    if var_nr_camioane = 0 then
        raise_application_error(-20003, 'Introduceti mai intai camionul în baza de date.');
    end if;

    select count(*) into var_nr_marfuri
    from marfa
    where id_marfa = :new.id_marfa;

    if var_nr_marfuri = 0 then
        raise_application_error(-20004, 'Introduceti mai intai marfa în baza de date.');
    end if;
end;
/
