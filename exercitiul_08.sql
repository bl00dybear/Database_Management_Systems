-- Media numarului transporturilor soferilor care au efectuat transporturi pentru clientul dat
create or replace function experienta_medie_soferi(param_nume_client clienti.nume%type) return number is
    var_avg_transporturi soferi.nr_transporturi%type := 0;
    var_id_client clienti.id_client%type;
begin
    select id_client
    into var_id_client
    from clienti
    where nume = param_nume_client;

    select avg(s.nr_transporturi)
    into var_avg_transporturi
    from soferi s
    join transporturi t on t.id_sofer = s.id_sofer
    join clienti c on c.id_client = t.id_client
    where c.id_client = var_id_client;

    return var_avg_transporturi;
exception
    when no_data_found then
        dbms_output.PUT_LINE('Clientul nu a fost gasit');
        return -1;
    when too_many_rows then
        dbms_output.PUT_LINE('Mai multi clienti cu acest nume au fost gasiti');
        return -2;
    when others then
        dbms_output.PUT_LINE('A aparut o eroare neasteptata: '||sqlerrm);
        return -3;
end experienta_medie_soferi;
/
