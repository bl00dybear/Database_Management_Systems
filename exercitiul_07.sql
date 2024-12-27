-- Pentru fiecare firma sa se afiseze numarul de inmatriculare al camioanelor pentru care
-- revizia a expirat (revizia este expirata daca a trecut mai mult de doi ani de la ultima revizie)
create or replace procedure revizii_camioane_expirate is
    cursor cursor_firme is
        select id_firma, nume
        from firma_de_transport;

    cursor cursor_camioane(param_id_firma firma_de_transport.id_firma%type) is
        select nr_inmatriculare,ultima_revizie
        from camioane
        where id_firma = param_id_firma
        order by ultima_revizie;

    var_id_firma firma_de_transport.id_firma%type;
    var_nume_firma firma_de_transport.nume%type;

    var_numar_inmatriculare camioane.nr_inmatriculare%type;
    var_ultima_revizie camioane.ultima_revizie%type;
begin
    open cursor_firme;
    loop
        fetch cursor_firme into var_id_firma, var_nume_firma;
        exit when cursor_firme%notfound;

        dbms_output.PUT_LINE('Firma: '||var_nume_firma||' (ID: '||var_id_firma||')');

        open cursor_camioane(var_id_firma);
        loop
            fetch cursor_camioane into var_numar_inmatriculare,var_ultima_revizie;
            exit when cursor_camioane%notfound;
            if var_ultima_revizie < add_months(sysdate, -24) then
                dbms_output.PUT_LINE('Camionul cu numarul de inmatriculare: '||var_numar_inmatriculare||
                                     ' are revizia expirata ');
            else
                 dbms_output.PUT_LINE('Camionul cu numarul de inmatriculare: '||var_numar_inmatriculare||
                                     ' nu are revizia expirata ');
            end if;
        end loop;
        close cursor_camioane;
    end loop;
    close cursor_firme;
end;