create or replace trigger trg_update_dupa_transport_nou
after insert on transporturi
declare
    var_id_transport number;
begin
    select max(id_transport)
    into var_id_transport
    from transporturi;

    update soferi s
    set s.nr_transporturi = s.nr_transporturi + 1
    where s.id_sofer = (
                        select id_sofer
                        from transporturi
                        where id_transport = var_id_transport
                        );

    update firma_de_transport ft
    set ft.nr_transporturi = ft.nr_transporturi + 1
    where ft.id_firma = (
                        select s.id_firma
                        from soferi s
                        join transporturi t on t.id_sofer = s.id_sofer
                        where t.id_transport = var_id_transport
        );

    update camioane c
    set c.nr_transporturi = c.nr_transporturi + 1
    where c.id_camion = (
                        select id_camion
                        from transporturi
                        where id_transport = var_id_transport
        );

    update masini_de_insotire mi
    set mi.nr_transpor = mi.nr_transpor + 1
    where mi.id_insotire = (
                        select ti.id_insotire
                        from transport_insotire ti
                        join transporturi t on t.id_transport = ti.id_transport
                        where t.id_transport = var_id_transport
        );
end;
/