type arr_soferi as table of sofer_type;


create or replace package rezervare_transport as
    type sofer_type as object (
        id_sofer number,
        id_firma number,
        nume varchar2(40),
        data_angajare date,
        nr_transporturi number
    );
    

    type sofer_camion as object (
        id_sofer number,
        id_camion number
    );
    function cautare_soferi return arr_soferi;

    function cautare_camion_sofer(
        param_tonaj number
    ) return sofer_camion;

    procedure inserare_transport (
        param_id_marfa transporturi.id_marfa%type,
        param_id_client transporturi.id_client%type,
        param_loc_incarcare transporturi.loc_incarcare%type,
        param_loc_descarcare transporturi.loc_descarcare%type,
        param_nr_kilometri transporturi.nr_kilometri%type,
        param_tara_incarcare transporturi.tara_incarcare%type,
        param_tara_descarcare transporturi.tara_descarcare%type
    );


    procedure verificare_client_marfa(
        param_id_client transporturi.id_client%type,
        param_id_marfa transporturi.id_marfa%type
    );
end rezervare_transport;
/

create or replace package body rezervare_transport as
    function cautare_soferi return arr_soferi is
        cursor cursor_soferi is
            select id_sofer, id_firma, nume, data_angajare, nr_transporturi
            from soferi
            order by id_firma;

        lista_soferi arr_soferi ;
        var_ultima_firma number := -1;
        var_id_sofer number;
        var_id_firma number;
        var_nume varchar2(40);
        var_data_angajare date;
        var_nr_transporturi number;
    begin
        lista_soferi := lista_soferi multiset union all arr_soferi();
        open cursor_soferi;
        loop
            fetch cursor_soferi into var_id_sofer, var_id_firma, var_nume, var_data_angajare, var_nr_transporturi;
            exit when cursor_soferi%notfound;

            if var_id_firma != var_ultima_firma then
                lista_soferi.extend;
                lista_soferi(lista_soferi.count) := sofer_type(
                    var_id_sofer,
                    var_id_firma,
                    var_nume,
                    var_data_angajare,
                    var_nr_transporturi
                );
                var_ultima_firma := var_id_firma;
            end if;
        end loop;

        close cursor_soferi;
        return lista_soferi;
    end cautare_soferi;

    function cautare_camion_sofer(
        param_tonaj number
    ) return sofer_camion is

        cursor cursor_camion_sofer is
            select s.id_sofer, c.id_camion
            from soferi s
            join camioane c on s.id_firma = c.id_firma
            join trailere t on c.id_trailer = t.id_trailer
            where t.numar_axe >= ceil(param_tonaj / 8)
            order by s.nr_transporturi desc;

        var_id_sofer number:=0;
        var_id_camion number:=0;
    begin
        open cursor_camion_sofer;
        fetch cursor_camion_sofer into var_id_sofer, var_id_camion;
        close cursor_camion_sofer;

        return sofer_camion(var_id_sofer, var_id_camion);
    end cautare_camion_sofer;

    procedure inserare_transport (
        param_id_marfa transporturi.id_marfa%type,
        param_id_client transporturi.id_client%type,
        param_loc_incarcare transporturi.loc_incarcare%type,
        param_loc_descarcare transporturi.loc_descarcare%type,
        param_nr_kilometri transporturi.nr_kilometri%type,
        param_tara_incarcare transporturi.tara_incarcare%type,
        param_tara_descarcare transporturi.tara_descarcare%type
    ) is
        var_sofer_camion sofer_camion;
        var_tonaj number;

        err_transportator exception ;
    begin
        verificare_client_marfa(param_id_client,param_id_marfa);

        select tonaj into var_tonaj from marfa where id_marfa = param_id_marfa;

        var_sofer_camion := cautare_camion_sofer(var_tonaj);

        if var_sofer_camion.id_sofer != 0 and var_sofer_camion.id_camion !=0 then
            insert into transporturi (id_transport, id_camion, id_sofer, id_marfa, id_client, nr_kilometri,
                                      tara_incarcare, loc_incarcare, tara_descarcare, loc_descarcare)
            values (seq_transporturi.nextval,var_sofer_camion.id_camion,
                    var_sofer_camion.id_sofer,param_id_marfa,param_id_client,
                    param_nr_kilometri,param_tara_incarcare,
                    param_loc_incarcare,param_tara_descarcare,
                    param_loc_descarcare);
            commit;
            dbms_output.PUT_LINE('Transport cu ID-ul '|| seq_transporturi.currval||' a fost introdus.');
        else
            if var_sofer_camion.id_sofer = 0 and var_sofer_camion.id_camion =0 then
                raise err_transportator;
            end if;
        end if;
    exception
        when err_transportator then
            dbms_output.PUT_LINE('Nu se gaseste un transportator potrivit pentru marfa cu ID-ul '||
                                 param_id_marfa||'.');
        when others then
            dbms_output.PUT_LINE('');
    end inserare_transport;

    procedure verificare_client_marfa(
        param_id_client transporturi.id_client%type,
        param_id_marfa transporturi.id_marfa%type
    ) is
        var_nr_client number := 0;
        var_nr_marfa number := 0;
        err_client exception ;
        err_marfa exception ;
    begin

        select count(*) into var_nr_client from clienti where id_client = param_id_client;
        if var_nr_client = 0 then
            raise err_client;
        end if;

        select count(*) into var_nr_marfa from marfa where id_marfa = param_id_marfa;
        if var_nr_marfa = 0 then
            raise err_marfa;
        end if;


exception
    when err_marfa then
        dbms_output.PUT_LINE('Mai intai introduceti in baza de date marfa cu ID-ul '|| param_id_marfa||'.');
        raise ;
    when err_client then
        dbms_output.PUT_LINE('Mai intai introduceti in baza de date clientul cu ID-ul ' || param_id_client||'.');
        raise ;
    end verificare_client_marfa;
end rezervare_transport;
/
