### Problema în limbaj natural:

**Problema:**  
Avem o bază de date care conține tabelele `departments` și `employees`. Dorim să găsim lista angajaților din fiecare departament, ordonată după data angajării, și să afișăm pentru fiecare departament numele angajaților, salariile și vechimea lor (în luni). Fiecare departament trebuie procesat individual, iar pentru fiecare departament utilizăm un cursor principal. Lista angajaților va fi obținută folosind un cursor parametrizat dependent de departamentul curent.

---

### Soluție:
Vom crea un **procedură stocată** numită `department_employee_summary` care va utiliza:
1. Un cursor principal pentru a parcurge toate departamentele.
2. Un cursor parametrizat care, pentru fiecare departament, va returna angajații din acel departament.

Procedura va fi apelată ulterior pentru a afișa datele.

---

#### Codul complet:

```sql
create or replace procedure department_employee_summary is
    -- Cursor principal pentru departamente
    cursor dept_cursor is
        select department_id, department_name
        from departments;

    -- Cursor parametrizat pentru angajații unui departament
    cursor emp_cursor(p_department_id departments.department_id%type) is
        select first_name, last_name, hire_date, salary,
               months_between(sysdate, hire_date) as vechime
        from employees
        where department_id = p_department_id
        order by hire_date;

    -- Variabile pentru stocarea valorilor departamentului
    v_dept_id departments.department_id%type;
    v_dept_name departments.department_name%type;

    -- Variabile pentru stocarea valorilor angajaților
    v_first_name employees.first_name%type;
    v_last_name employees.last_name%type;
    v_hire_date employees.hire_date%type;
    v_salary employees.salary%type;
    v_vechime number;
begin
    -- Parcurgem fiecare departament folosind cursorul principal
    open dept_cursor;
    loop
        fetch dept_cursor into v_dept_id, v_dept_name;
        exit when dept_cursor%notfound;

        -- Afișăm numele departamentului
        dbms_output.put_line('Departament: ' || v_dept_name || ' (ID: ' || v_dept_id || ')');

        -- Deschidem cursorul parametrizat pentru angajații din departamentul curent
        open emp_cursor(v_dept_id);
        loop
            fetch emp_cursor into v_first_name, v_last_name, v_hire_date, v_salary, v_vechime;
            exit when emp_cursor%notfound;

            -- Afișăm detaliile angajaților
            dbms_output.put_line('  Angajat: ' || v_first_name || ' ' || v_last_name ||
                                 ', Data angajării: ' || to_char(v_hire_date, 'YYYY-MM-DD') ||
                                 ', Salariu: ' || v_salary ||
                                 ', Vechime: ' || trunc(v_vechime) || ' luni');
        end loop;
        close emp_cursor;

        dbms_output.put_line('----------------------------------------');
    end loop;
    close dept_cursor;
end;
/
```

---

### Explicația codului:
1. **Cursor principal (`dept_cursor`)**:
   - Iterează prin toate departamentele din tabelul `departments`.
   - Returnează `department_id` și `department_name`.

2. **Cursor parametrizat (`emp_cursor`)**:
   - Acceptă un parametru (`p_department_id`) care corespunde unui `department_id` din cursorul principal.
   - Returnează angajații din departamentul specificat, ordonați după data angajării.
   - Calculează vechimea în luni utilizând `months_between`.

3. **Bloc principal al procedurii**:
   - Se deschide `dept_cursor` și se parcurg rândurile departamentelor.
   - Pentru fiecare departament, se deschide `emp_cursor` cu parametrul corespunzător.
   - Se afișează angajații din departamentul curent.

4. **Gestionarea resurselor**:
   - Atât cursorul principal, cât și cel parametrizat sunt închise după utilizare.

---

### Apelarea procedurii:
Pentru a afișa datele în fereastra de ieșire:
```sql
begin
    department_employee_summary;
end;
/
```

---

### Output exemplu:
Pentru tabelul `departments` și `employees` (presupunând date fictive):

```
Departament: HR (ID: 10)
  Angajat: John Doe, Data angajării: 2020-01-15, Salariu: 4000, Vechime: 47 luni
  Angajat: Jane Smith, Data angajării: 2021-03-12, Salariu: 3500, Vechime: 33 luni
----------------------------------------
Departament: IT (ID: 20)
  Angajat: Alice Brown, Data angajării: 2019-06-01, Salariu: 5000, Vechime: 55 luni
----------------------------------------
Departament: Sales (ID: 30)
  Angajat: Bob White, Data angajării: 2018-10-20, Salariu: 4500, Vechime: 62 luni
----------------------------------------
```

---

Această soluție utilizează două tipuri de cursoare:
1. **Cursor principal**: Parcurge rândurile departamentelor.
2. **Cursor parametrizat**: Returnează angajații dintr-un departament specific.

Se evidențiază dependența logică între cele două cursoare: cursorul parametrizat folosește rezultatele cursorului principal.