create or replace procedure profit_maxim(
    id_firma_1 in number,
    id_firma_2 in number,
    id_firma_3 in number
)
is


    arr1 arr_nested := arr_nested();
    type arr_indexed is table of number index by binary_integer;
    arr2 arr_indexed;
    arr3 arr_varray := arr_varray();
begin

    select t.nr_kilometri
    bulk collect into arr1
    from transporturi t
    join soferi s on s.id_sofer = t.id_sofer
    join firma_de_transport f on f.id_firma = s.id_firma
    where f.id_firma = id_firma_1
    fetch first 10 rows only ;

    select t.nr_kilometri
    bulk collect into arr2
    from transporturi t
    join soferi s on s.id_sofer = t.id_sofer
    join firma_de_transport f on f.id_firma = s.id_firma
    where f.id_firma = id_firma_2
    fetch first 10 rows only ;

    select t.nr_kilometri
    bulk collect into arr3
    from transporturi t
    join soferi s on s.id_sofer = t.id_sofer
    join firma_de_transport f on f.id_firma = s.id_firma
    where f.id_firma = id_firma_3
    fetch first 10 rows only ;

    for i in arr1.first..arr1.last loop
        dbms_output.PUT_LINE(arr1(i));
        end loop;


end;
/


-- type arr_indexed is table of number index by binary_integer;
create or replace type arr_varray is varray(10) of number;
create or replace type arr_nested is table of number;
