create or replace procedure profit_maxim(
    id_firma_1 in number,
    nume_prod in producator_camioane.nume%type,
    id_firma_3 in number
)
is
    type arr_nested is table of number;
        list_km_soferi arr_nested;
    type arr_associative is table of number index by producator_camioane.nume%type;
        list_nr_camioane arr_associative;
    type arr_varray is varray(5) of date;
        list_date_revizii arr_varray;
    v_nr_prod_camioane number;
    v_nume_prod producator_camioane.nume%type;
    ex_key_not_found exception ;
begin

    select t.nr_kilometri
        bulk collect into  list_km_soferi
    from transporturi t
    join soferi s on s.id_sofer = t.id_sofer
    where s.id_firma = id_firma_1;

    select count(*)
        into v_nr_prod_camioane
    from producator_camioane;

    for i in 1..v_nr_prod_camioane loop
        select nume
            into v_nume_prod
        from producator_camioane
            where id_prod_camion = i;

        select count(*)
            into list_nr_camioane(upper(v_nume_prod))
        from camioane
            where id_prod_camion = i and  id_firma = id_firma_1;
        end loop;


    for i in list_km_soferi.first..list_km_soferi.last loop
        dbms_output.PUT_LINE(list_km_soferi(i));
        end loop;

    if list_nr_camioane.exists(nume_prod) then
        dbms_output.PUT_LINE(list_nr_camioane(nume_prod));
    else
        raise ex_key_not_found;
    end if;

exception
    when ex_key_not_found then
        dbms_output.PUT_LINE('Numele producatorului nu este gasit');
    when others then
        dbms_output.PUT_LINE('Eroare necunoscuta');
end;
/