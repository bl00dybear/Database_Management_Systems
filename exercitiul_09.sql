-- Se Numele unei firme de transport si numele unui producator de marfa. Sa se determine numele soferului care a avut
-- cele mai multe transporturi de marfa de la producatorul dat
create or replace procedure soferul_potrivit (param_nume_firma firma_de_transport.nume%type, param_nume_prod_marfa
                                                producator_marfa.nume%type) is
    var_nr_transporturi number;
    var_nume_sofer soferi.nume%type;
    var_id_firma firma_de_transport.id_firma%type;
    var_id_prod_marfa producator_marfa.id_prod_marfa%type;

    exc_date_insuficiente exception ;
    exc_lipsa_date exception ;
begin
    select id_firma
    into var_id_firma
    from firma_de_transport
    where nume = param_nume_firma;

    select id_prod_marfa
    into var_id_prod_marfa
    from producator_marfa
    where nume = param_nume_prod_marfa;

    select count(*)
    into var_nr_transporturi
    from firma_de_transport ft
    join soferi s on s.id_firma = ft.id_firma
    join transporturi t on t.id_sofer = s.id_sofer
    join marfa m on m.id_marfa = t.id_marfa
    join producator_marfa pm on pm.id_prod_marfa = m.id_producator
    where ft.id_firma = var_id_firma and pm.id_prod_marfa = var_id_prod_marfa;

    if var_nr_transporturi = 1 then
        raise exc_date_insuficiente;
    else
        if var_nr_transporturi = 0 then
            raise exc_lipsa_date;
        end if;
    end if;

    select *
    into var_nume_sofer
    from(
        select s.nume
        from firma_de_transport ft
        join soferi s on s.id_firma = ft.id_firma
        join transporturi t on t.id_sofer = s.id_sofer
        join marfa m on m.id_marfa = t.id_marfa
        join producator_marfa pm on pm.id_prod_marfa = m.id_producator
        where ft.id_firma = var_id_firma and pm.id_prod_marfa = var_id_prod_marfa
        )
    where rownum = 1;

    dbms_output.PUT_LINE('Numele soferului este: '||var_nume_sofer);

exception
    when exc_date_insuficiente then
        dbms_output.PUT_LINE('S-a efectuat un transport, deci datele sunt neconcludente!');
    when exc_lipsa_date then
        dbms_output.PUT_LINE('Nu s-a efectuat nici un transport!');
    when too_many_rows then
        dbms_output.PUT_LINE('S-au gasit mai multe firme de transport sau producatori de marfa cu aceste nume!');
    when no_data_found then
        dbms_output.PUT_LINE('Nu s-a gasit firma de transport sau producatorul de marfa cu aceste nume!');
end;
/