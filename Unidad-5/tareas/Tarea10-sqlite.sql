--Proporciona una consulta que muestre solo los clientes de Brasil.
select * from customers where country regexp "Brazil";
/**
┌────────────┬───────────┬───────────┬──────────────────────────────────────────────────┬─────────────────────────────────┬─────────────────────┬───────┬─────────┬────────────┬────────────────────┬────────────────────┬───────────────────────────────┬──────────────┐
│ CustomerId │ FirstName │ LastName  │                     Company                      │             Address             │        City         │ State │ Country │ PostalCode │       Phone        │        Fax         │             Email             │ SupportRepId │
├────────────┼───────────┼───────────┼──────────────────────────────────────────────────┼─────────────────────────────────┼─────────────────────┼───────┼─────────┼────────────┼────────────────────┼────────────────────┼───────────────────────────────┼──────────────┤
│ 1          │ Luís      │ Gonçalves │ Embraer - Empresa Brasileira de Aeronáutica S.A. │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP    │ Brazil  │ 12227-000  │ +55 (12) 3923-5555 │ +55 (12) 3923-5566 │ luisg@embraer.com.br          │ 3            │
│ 10         │ Eduardo   │ Martins   │ Woodstock Discos                                 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP    │ Brazil  │ 01007-010  │ +55 (11) 3033-5446 │ +55 (11) 3033-4564 │ eduardo@woodstock.com.br      │ 4            │
│ 11         │ Alexandre │ Rocha     │ Banco do Brasil S.A.                             │ Av. Paulista, 2022              │ São Paulo           │ SP    │ Brazil  │ 01310-200  │ +55 (11) 3055-3278 │ +55 (11) 3055-8131 │ alero@uol.com.br              │ 5            │
│ 12         │ Roberto   │ Almeida   │ Riotur                                           │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ    │ Brazil  │ 20040-020  │ +55 (21) 2271-7000 │ +55 (21) 2271-7070 │ roberto.almeida@riotur.gov.br │ 3            │
│ 13         │ Fernanda  │ Ramos     │                                                  │ Qe 7 Bloco G                    │ Brasília            │ DF    │ Brazil  │ 71020-677  │ +55 (61) 3363-5547 │ +55 (61) 3363-7855 │ fernadaramos4@uol.com.br      │ 4            │
└────────────┴───────────┴───────────┴──────────────────────────────────────────────────┴─────────────────────────────────┴─────────────────────┴───────┴─────────┴────────────┴────────────────────┴────────────────────┴───────────────────────────────┴──────────────┘
**/
--Proporciona una consulta que muestre las facturas de clientes que son de Brasil. La tabla resultante debe mostrar el nombre completo del cliente, ID de factura, fecha de la factura y país de facturación.

SELECT * FROM employees WHERE title = "Sales Manager";
/**
┌────────────┬──────────┬───────────┬───────────────┬───────────┬─────────────────────┬─────────────────────┬──────────────┬─────────┬───────┬─────────┬────────────┬───────────────────┬───────────────────┬───────────────────────┐
│ EmployeeId │ LastName │ FirstName │     Title     │ ReportsTo │      BirthDate      │      HireDate       │   Address    │  City   │ State │ Country │ PostalCode │       Phone       │        Fax        │         Email         │
├────────────┼──────────┼───────────┼───────────────┼───────────┼─────────────────────┼─────────────────────┼──────────────┼─────────┼───────┼─────────┼────────────┼───────────────────┼───────────────────┼───────────────────────┤
│ 2          │ Edwards  │ Nancy     │ Sales Manager │ 1         │ 1958-12-08 00:00:00 │ 2002-05-01 00:00:00 │ 825 8 Ave SW │ Calgary │ AB    │ Canada  │ T2P 2T3    │ +1 (403) 262-3443 │ +1 (403) 262-3322 │ nancy@chinookcorp.com │
└────────────┴──────────┴───────────┴───────────────┴───────────┴─────────────────────┴─────────────────────┴──────────────┴─────────┴───────┴─────────┴────────────┴───────────────────┴───────────────────┴───────────────────────┘
**/

--Proporciona una consulta que muestre una lista única de países de facturación de la tabla de Facturas.

SELECT DISTINCT BillingCountry FROM invoices;
/**
┌────────────────┐
│ BillingCountry │
├────────────────┤
│ Germany        │
│ Norway         │
│ Belgium        │
│ Canada         │
│ USA            │
│ France         │
│ Ireland        │
│ United Kingdom │
│ Australia      │
│ Chile          │
│ India          │
│ Brazil         │
│ Portugal       │
│ Netherlands    │
│ Spain          │
│ Sweden         │
│ Czech Republic │
│ Finland        │
│ Denmark        │
│ Italy          │
│ Poland         │
│ Austria        │
│ Hungary        │
│ Argentina      │
└────────────────┘
**/

--Proporciona una consulta que muestre las facturas de clientes que son de Brasil.

SELECT * FROM invoices i join customers c on i.CustomerID=c.CustomerID AND c.Country ='Brazil';

SELECT * FROM invoices i , customers c WHERE i.CustomerID=c.CustomerID AND c.Country ='Brazil';

/**
┌───────────┬────────────┬─────────────────────┬─────────────────────────────────┬─────────────────────┬──────────────┬────────────────┬───────────────────┬───────┬────────────┬───────────┬───────────┬──────────────────────────────────────────────────┬─────────────────────────────────┬─────────────────────┬───────┬─────────┬────────────┬────────────────────┬────────────────────┬───────────────────────────────┬──────────────┐
│ InvoiceId │ CustomerId │     InvoiceDate     │         BillingAddress          │     BillingCity     │ BillingState │ BillingCountry │ BillingPostalCode │ Total │ CustomerId │ FirstName │ LastName  │                     Company                      │             Address             │        City         │ State │ Country │ PostalCode │       Phone        │        Fax         │             Email             │ SupportRepId │
├───────────┼────────────┼─────────────────────┼─────────────────────────────────┼─────────────────────┼──────────────┼────────────────┼───────────────────┼───────┼────────────┼───────────┼───────────┼──────────────────────────────────────────────────┼─────────────────────────────────┼─────────────────────┼───────┼─────────┼────────────┼────────────────────┼────────────────────┼───────────────────────────────┼──────────────┤
│ 98        │ 1          │ 2010-03-11 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.98  │ 1          │ Luís      │ Gonçalves │ Embraer - Empresa Brasileira de Aeronáutica S.A. │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP    │ Brazil  │ 12227-000  │ +55 (12) 3923-5555 │ +55 (12) 3923-5566 │ luisg@embraer.com.br          │ 3            │
│ 121       │ 1          │ 2010-06-13 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.96  │ 1          │ Luís      │ Gonçalves │ Embraer - Empresa Brasileira de Aeronáutica S.A. │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP    │ Brazil  │ 12227-000  │ +55 (12) 3923-5555 │ +55 (12) 3923-5566 │ luisg@embraer.com.br          │ 3            │
│ 143       │ 1          │ 2010-09-15 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 5.94  │ 1          │ Luís      │ Gonçalves │ Embraer - Empresa Brasileira de Aeronáutica S.A. │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP    │ Brazil  │ 12227-000  │ +55 (12) 3923-5555 │ +55 (12) 3923-5566 │ luisg@embraer.com.br          │ 3            │
│ 195       │ 1          │ 2011-05-06 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 0.99  │ 1          │ Luís      │ Gonçalves │ Embraer - Empresa Brasileira de Aeronáutica S.A. │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP    │ Brazil  │ 12227-000  │ +55 (12) 3923-5555 │ +55 (12) 3923-5566 │ luisg@embraer.com.br          │ 3            │
│ 316       │ 1          │ 2012-10-27 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 1.98  │ 1          │ Luís      │ Gonçalves │ Embraer - Empresa Brasileira de Aeronáutica S.A. │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP    │ Brazil  │ 12227-000  │ +55 (12) 3923-5555 │ +55 (12) 3923-5566 │ luisg@embraer.com.br          │ 3            │
│ 327       │ 1          │ 2012-12-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 13.86 │ 1          │ Luís      │ Gonçalves │ Embraer - Empresa Brasileira de Aeronáutica S.A. │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP    │ Brazil  │ 12227-000  │ +55 (12) 3923-5555 │ +55 (12) 3923-5566 │ luisg@embraer.com.br          │ 3            │
│ 382       │ 1          │ 2013-08-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 8.91  │ 1          │ Luís      │ Gonçalves │ Embraer - Empresa Brasileira de Aeronáutica S.A. │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP    │ Brazil  │ 12227-000  │ +55 (12) 3923-5555 │ +55 (12) 3923-5566 │ luisg@embraer.com.br          │ 3            │
│ 25        │ 10         │ 2009-04-09 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 8.91  │ 10         │ Eduardo   │ Martins   │ Woodstock Discos                                 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP    │ Brazil  │ 01007-010  │ +55 (11) 3033-5446 │ +55 (11) 3033-4564 │ eduardo@woodstock.com.br      │ 4            │
│ 154       │ 10         │ 2010-11-14 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │ 10         │ Eduardo   │ Martins   │ Woodstock Discos                                 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP    │ Brazil  │ 01007-010  │ +55 (11) 3033-5446 │ +55 (11) 3033-4564 │ eduardo@woodstock.com.br      │ 4            │
│ 177       │ 10         │ 2011-02-16 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 3.96  │ 10         │ Eduardo   │ Martins   │ Woodstock Discos                                 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP    │ Brazil  │ 01007-010  │ +55 (11) 3033-5446 │ +55 (11) 3033-4564 │ eduardo@woodstock.com.br      │ 4            │
│ 199       │ 10         │ 2011-05-21 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 5.94  │ 10         │ Eduardo   │ Martins   │ Woodstock Discos                                 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP    │ Brazil  │ 01007-010  │ +55 (11) 3033-5446 │ +55 (11) 3033-4564 │ eduardo@woodstock.com.br      │ 4            │
│ 251       │ 10         │ 2012-01-09 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 0.99  │ 10         │ Eduardo   │ Martins   │ Woodstock Discos                                 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP    │ Brazil  │ 01007-010  │ +55 (11) 3033-5446 │ +55 (11) 3033-4564 │ eduardo@woodstock.com.br      │ 4            │
│ 372       │ 10         │ 2013-07-02 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │ 10         │ Eduardo   │ Martins   │ Woodstock Discos                                 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP    │ Brazil  │ 01007-010  │ +55 (11) 3033-5446 │ +55 (11) 3033-4564 │ eduardo@woodstock.com.br      │ 4            │
│ 383       │ 10         │ 2013-08-12 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 13.86 │ 10         │ Eduardo   │ Martins   │ Woodstock Discos                                 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP    │ Brazil  │ 01007-010  │ +55 (11) 3033-5446 │ +55 (11) 3033-4564 │ eduardo@woodstock.com.br      │ 4            │
│ 57        │ 11         │ 2009-09-06 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │ 11         │ Alexandre │ Rocha     │ Banco do Brasil S.A.                             │ Av. Paulista, 2022              │ São Paulo           │ SP    │ Brazil  │ 01310-200  │ +55 (11) 3055-3278 │ +55 (11) 3055-8131 │ alero@uol.com.br              │ 5            │
│ 68        │ 11         │ 2009-10-17 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 13.86 │ 11         │ Alexandre │ Rocha     │ Banco do Brasil S.A.                             │ Av. Paulista, 2022              │ São Paulo           │ SP    │ Brazil  │ 01310-200  │ +55 (11) 3055-3278 │ +55 (11) 3055-8131 │ alero@uol.com.br              │ 5            │
│ 123       │ 11         │ 2010-06-17 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 8.91  │ 11         │ Alexandre │ Rocha     │ Banco do Brasil S.A.                             │ Av. Paulista, 2022              │ São Paulo           │ SP    │ Brazil  │ 01310-200  │ +55 (11) 3055-3278 │ +55 (11) 3055-8131 │ alero@uol.com.br              │ 5            │
│ 252       │ 11         │ 2012-01-22 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │ 11         │ Alexandre │ Rocha     │ Banco do Brasil S.A.                             │ Av. Paulista, 2022              │ São Paulo           │ SP    │ Brazil  │ 01310-200  │ +55 (11) 3055-3278 │ +55 (11) 3055-8131 │ alero@uol.com.br              │ 5            │
│ 275       │ 11         │ 2012-04-25 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 3.96  │ 11         │ Alexandre │ Rocha     │ Banco do Brasil S.A.                             │ Av. Paulista, 2022              │ São Paulo           │ SP    │ Brazil  │ 01310-200  │ +55 (11) 3055-3278 │ +55 (11) 3055-8131 │ alero@uol.com.br              │ 5            │
│ 297       │ 11         │ 2012-07-28 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 5.94  │ 11         │ Alexandre │ Rocha     │ Banco do Brasil S.A.                             │ Av. Paulista, 2022              │ São Paulo           │ SP    │ Brazil  │ 01310-200  │ +55 (11) 3055-3278 │ +55 (11) 3055-8131 │ alero@uol.com.br              │ 5            │
│ 349       │ 11         │ 2013-03-18 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 0.99  │ 11         │ Alexandre │ Rocha     │ Banco do Brasil S.A.                             │ Av. Paulista, 2022              │ São Paulo           │ SP    │ Brazil  │ 01310-200  │ +55 (11) 3055-3278 │ +55 (11) 3055-8131 │ alero@uol.com.br              │ 5            │
│ 34        │ 12         │ 2009-05-23 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 0.99  │ 12         │ Roberto   │ Almeida   │ Riotur                                           │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ    │ Brazil  │ 20040-020  │ +55 (21) 2271-7000 │ +55 (21) 2271-7070 │ roberto.almeida@riotur.gov.br │ 3            │
│ 155       │ 12         │ 2010-11-14 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │ 12         │ Roberto   │ Almeida   │ Riotur                                           │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ    │ Brazil  │ 20040-020  │ +55 (21) 2271-7000 │ +55 (21) 2271-7070 │ roberto.almeida@riotur.gov.br │ 3            │
│ 166       │ 12         │ 2010-12-25 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 13.86 │ 12         │ Roberto   │ Almeida   │ Riotur                                           │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ    │ Brazil  │ 20040-020  │ +55 (21) 2271-7000 │ +55 (21) 2271-7070 │ roberto.almeida@riotur.gov.br │ 3            │
│ 221       │ 12         │ 2011-08-25 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 8.91  │ 12         │ Roberto   │ Almeida   │ Riotur                                           │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ    │ Brazil  │ 20040-020  │ +55 (21) 2271-7000 │ +55 (21) 2271-7070 │ roberto.almeida@riotur.gov.br │ 3            │
│ 350       │ 12         │ 2013-03-31 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │ 12         │ Roberto   │ Almeida   │ Riotur                                           │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ    │ Brazil  │ 20040-020  │ +55 (21) 2271-7000 │ +55 (21) 2271-7070 │ roberto.almeida@riotur.gov.br │ 3            │
│ 373       │ 12         │ 2013-07-03 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 3.96  │ 12         │ Roberto   │ Almeida   │ Riotur                                           │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ    │ Brazil  │ 20040-020  │ +55 (21) 2271-7000 │ +55 (21) 2271-7070 │ roberto.almeida@riotur.gov.br │ 3            │
│ 395       │ 12         │ 2013-10-05 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 5.94  │ 12         │ Roberto   │ Almeida   │ Riotur                                           │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ    │ Brazil  │ 20040-020  │ +55 (21) 2271-7000 │ +55 (21) 2271-7070 │ roberto.almeida@riotur.gov.br │ 3            │
│ 35        │ 13         │ 2009-06-05 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │ 13         │ Fernanda  │ Ramos     │                                                  │ Qe 7 Bloco G                    │ Brasília            │ DF    │ Brazil  │ 71020-677  │ +55 (61) 3363-5547 │ +55 (61) 3363-7855 │ fernadaramos4@uol.com.br      │ 4            │
│ 58        │ 13         │ 2009-09-07 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 3.96  │ 13         │ Fernanda  │ Ramos     │                                                  │ Qe 7 Bloco G                    │ Brasília            │ DF    │ Brazil  │ 71020-677  │ +55 (61) 3363-5547 │ +55 (61) 3363-7855 │ fernadaramos4@uol.com.br      │ 4            │
│ 80        │ 13         │ 2009-12-10 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 5.94  │ 13         │ Fernanda  │ Ramos     │                                                  │ Qe 7 Bloco G                    │ Brasília            │ DF    │ Brazil  │ 71020-677  │ +55 (61) 3363-5547 │ +55 (61) 3363-7855 │ fernadaramos4@uol.com.br      │ 4            │
│ 132       │ 13         │ 2010-07-31 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 0.99  │ 13         │ Fernanda  │ Ramos     │                                                  │ Qe 7 Bloco G                    │ Brasília            │ DF    │ Brazil  │ 71020-677  │ +55 (61) 3363-5547 │ +55 (61) 3363-7855 │ fernadaramos4@uol.com.br      │ 4            │
│ 253       │ 13         │ 2012-01-22 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │ 13         │ Fernanda  │ Ramos     │                                                  │ Qe 7 Bloco G                    │ Brasília            │ DF    │ Brazil  │ 71020-677  │ +55 (61) 3363-5547 │ +55 (61) 3363-7855 │ fernadaramos4@uol.com.br      │ 4            │
│ 264       │ 13         │ 2012-03-03 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 13.86 │ 13         │ Fernanda  │ Ramos     │                                                  │ Qe 7 Bloco G                    │ Brasília            │ DF    │ Brazil  │ 71020-677  │ +55 (61) 3363-5547 │ +55 (61) 3363-7855 │ fernadaramos4@uol.com.br      │ 4            │
│ 319       │ 13         │ 2012-11-01 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 8.91  │ 13         │ Fernanda  │ Ramos     │                                                  │ Qe 7 Bloco G                    │ Brasília            │ DF    │ Brazil  │ 71020-677  │ +55 (61) 3363-5547 │ +55 (61) 3363-7855 │ fernadaramos4@uol.com.br      │ 4            │
└───────────┴────────────┴─────────────────────┴─────────────────────────────────┴─────────────────────┴──────────────┴────────────────┴───────────────────┴───────┴────────────┴───────────┴───────────┴──────────────────────────────────────────────────┴─────────────────────────────────┴─────────────────────┴───────┴─────────┴────────────┴────────────────────┴────────────────────┴───────────────────────────────┴──────────────┘
**/

--Proporciona una consulta que muestre las facturas asociadas con cada agente de ventas. La tabla resultante debe incluir el nombre completo del Agente de Ventas.

SELECT e.firstname || ' ' || e.lastname as nombre_completo, i.* FROM INVOICES i, employees e  join customers c on c.SupportRepId=e.EmployeeID and c.CustomerID=i.CustomerID AND e.title='Sales Manager';

SELECT e.firstname || ' ' || e.lastname as nombre_completo, i.* FROM INVOICES i, employees e, customers c WHERE c.SupportRepId=e.EmployeeID and c.CustomerID=i.CustomerID AND e.title='Sales Manager';


--Proporciona una consulta que muestre el Total de la Factura, nombre del cliente, país y nombre del Agente de Ventas para todas las facturas y clientes.


SELECT i.total, c.firstname || ' ' || c.Lastname as Nombre, c.country, e.firstname|| ' ' || e.lastname as nombre_agente   FROM INVOICES i, employees as e  join customers c on c.CustomerID=i.CustomerID and c.SupportRepId=e.EmployeeID ;

SELECT i.total, c.firstname || ' ' || c.Lastname as Nombre, c.country, e.firstname|| ' ' || e.lastname as nombre_agente   FROM INVOICES i, employees, customers c WHERE c.CustomerID=i.CustomerID and c.SupportRepId=e.EmployeeID ;

/**
┌───────┬───────────────────────┬────────────────┬───────────────┐
│ Total │        Nombre         │    Country     │ nombre_agente │
├───────┼───────────────────────┼────────────────┼───────────────┤
│ 3.98  │ Luís Gonçalves        │ Brazil         │ Jane Peacock  │
│ 3.96  │ Luís Gonçalves        │ Brazil         │ Jane Peacock  │
│ 5.94  │ Luís Gonçalves        │ Brazil         │ Jane Peacock  │
│ 0.99  │ Luís Gonçalves        │ Brazil         │ Jane Peacock  │
│ 1.98  │ Luís Gonçalves        │ Brazil         │ Jane Peacock  │
│ 13.86 │ Luís Gonçalves        │ Brazil         │ Jane Peacock  │
│ 8.91  │ Luís Gonçalves        │ Brazil         │ Jane Peacock  │
│ 1.98  │ Leonie Köhler         │ Germany        │ Steve Johnson │
│ 13.86 │ Leonie Köhler         │ Germany        │ Steve Johnson │
│ 8.91  │ Leonie Köhler         │ Germany        │ Steve Johnson │
│ 1.98  │ Leonie Köhler         │ Germany        │ Steve Johnson │
│ 3.96  │ Leonie Köhler         │ Germany        │ Steve Johnson │
│ 5.94  │ Leonie Köhler         │ Germany        │ Steve Johnson │
│ 0.99  │ Leonie Köhler         │ Germany        │ Steve Johnson │
│ 3.98  │ François Tremblay     │ Canada         │ Jane Peacock  │
│ 13.86 │ François Tremblay     │ Canada         │ Jane Peacock  │
│ 8.91  │ François Tremblay     │ Canada         │ Jane Peacock  │
│ 1.98  │ François Tremblay     │ Canada         │ Jane Peacock  │
│ 3.96  │ François Tremblay     │ Canada         │ Jane Peacock  │
│ 5.94  │ François Tremblay     │ Canada         │ Jane Peacock  │
│ 0.99  │ François Tremblay     │ Canada         │ Jane Peacock  │
│ 3.96  │ Bjørn Hansen          │ Norway         │ Margaret Park │
│ 5.94  │ Bjørn Hansen          │ Norway         │ Margaret Park │
│ 0.99  │ Bjørn Hansen          │ Norway         │ Margaret Park │
│ 1.98  │ Bjørn Hansen          │ Norway         │ Margaret Park │
│ 15.86 │ Bjørn Hansen          │ Norway         │ Margaret Park │
│ 8.91  │ Bjørn Hansen          │ Norway         │ Margaret Park │
│ 1.98  │ Bjørn Hansen          │ Norway         │ Margaret Park │
│ 1.98  │ František Wichterlová │ Czech Republic │ Margaret Park │
│ 3.96  │ František Wichterlová │ Czech Republic │ Margaret Park │
│ 5.94  │ František Wichterlová │ Czech Republic │ Margaret Park │
│ 0.99  │ František Wichterlová │ Czech Republic │ Margaret Park │
│ 1.98  │ František Wichterlová │ Czech Republic │ Margaret Park │
│ 16.86 │ František Wichterlová │ Czech Republic │ Margaret Park │
│ 8.91  │ František Wichterlová │ Czech Republic │ Margaret Park │
│ 8.91  │ Helena Holý           │ Czech Republic │ Steve Johnson │
│ 1.98  │ Helena Holý           │ Czech Republic │ Steve Johnson │
│ 3.96  │ Helena Holý           │ Czech Republic │ Steve Johnson │
│ 5.94  │ Helena Holý           │ Czech Republic │ Steve Johnson │
│ 0.99  │ Helena Holý           │ Czech Republic │ Steve Johnson │
│ 1.98  │ Helena Holý           │ Czech Republic │ Steve Johnson │
│ 25.86 │ Helena Holý           │ Czech Republic │ Steve Johnson │
│ 1.98  │ Astrid Gruber         │ Austria        │ Steve Johnson │
│ 18.86 │ Astrid Gruber         │ Austria        │ Steve Johnson │
│ 8.91  │ Astrid Gruber         │ Austria        │ Steve Johnson │
│ 1.98  │ Astrid Gruber         │ Austria        │ Steve Johnson │
│ 3.96  │ Astrid Gruber         │ Austria        │ Steve Johnson │
│ 5.94  │ Astrid Gruber         │ Austria        │ Steve Johnson │
│ 0.99  │ Astrid Gruber         │ Austria        │ Steve Johnson │
│ 5.94  │ Daan Peeters          │ Belgium        │ Margaret Park │
│ 0.99  │ Daan Peeters          │ Belgium        │ Margaret Park │
│ 1.98  │ Daan Peeters          │ Belgium        │ Margaret Park │
│ 13.86 │ Daan Peeters          │ Belgium        │ Margaret Park │
│ 8.91  │ Daan Peeters          │ Belgium        │ Margaret Park │
│ 1.98  │ Daan Peeters          │ Belgium        │ Margaret Park │
│ 3.96  │ Daan Peeters          │ Belgium        │ Margaret Park │
│ 1.98  │ Kara Nielsen          │ Denmark        │ Margaret Park │
│ 3.96  │ Kara Nielsen          │ Denmark        │ Margaret Park │
│ 5.94  │ Kara Nielsen          │ Denmark        │ Margaret Park │
│ 0.99  │ Kara Nielsen          │ Denmark        │ Margaret Park │
│ 1.98  │ Kara Nielsen          │ Denmark        │ Margaret Park │
│ 13.86 │ Kara Nielsen          │ Denmark        │ Margaret Park │
│ 8.91  │ Kara Nielsen          │ Denmark        │ Margaret Park │
│ 8.91  │ Eduardo Martins       │ Brazil         │ Margaret Park │
│ 1.98  │ Eduardo Martins       │ Brazil         │ Margaret Park │
│ 3.96  │ Eduardo Martins       │ Brazil         │ Margaret Park │
│ 5.94  │ Eduardo Martins       │ Brazil         │ Margaret Park │
│ 0.99  │ Eduardo Martins       │ Brazil         │ Margaret Park │
│ 1.98  │ Eduardo Martins       │ Brazil         │ Margaret Park │
│ 13.86 │ Eduardo Martins       │ Brazil         │ Margaret Park │
│ 1.98  │ Alexandre Rocha       │ Brazil         │ Steve Johnson │
│ 13.86 │ Alexandre Rocha       │ Brazil         │ Steve Johnson │
│ 8.91  │ Alexandre Rocha       │ Brazil         │ Steve Johnson │
│ 1.98  │ Alexandre Rocha       │ Brazil         │ Steve Johnson │
│ 3.96  │ Alexandre Rocha       │ Brazil         │ Steve Johnson │
│ 5.94  │ Alexandre Rocha       │ Brazil         │ Steve Johnson │
│ 0.99  │ Alexandre Rocha       │ Brazil         │ Steve Johnson │
│ 0.99  │ Roberto Almeida       │ Brazil         │ Jane Peacock  │
│ 1.98  │ Roberto Almeida       │ Brazil         │ Jane Peacock  │
│ 13.86 │ Roberto Almeida       │ Brazil         │ Jane Peacock  │
│ 8.91  │ Roberto Almeida       │ Brazil         │ Jane Peacock  │
│ 1.98  │ Roberto Almeida       │ Brazil         │ Jane Peacock  │
│ 3.96  │ Roberto Almeida       │ Brazil         │ Jane Peacock  │
│ 5.94  │ Roberto Almeida       │ Brazil         │ Jane Peacock  │
│ 1.98  │ Fernanda Ramos        │ Brazil         │ Margaret Park │
│ 3.96  │ Fernanda Ramos        │ Brazil         │ Margaret Park │
│ 5.94  │ Fernanda Ramos        │ Brazil         │ Margaret Park │
│ 0.99  │ Fernanda Ramos        │ Brazil         │ Margaret Park │
│ 1.98  │ Fernanda Ramos        │ Brazil         │ Margaret Park │
│ 13.86 │ Fernanda Ramos        │ Brazil         │ Margaret Park │
│ 8.91  │ Fernanda Ramos        │ Brazil         │ Margaret Park │
│ 8.91  │ Mark Philips          │ Canada         │ Steve Johnson │
│ 1.98  │ Mark Philips          │ Canada         │ Steve Johnson │
│ 3.96  │ Mark Philips          │ Canada         │ Steve Johnson │
│ 5.94  │ Mark Philips          │ Canada         │ Steve Johnson │
│ 0.99  │ Mark Philips          │ Canada         │ Steve Johnson │
│ 1.98  │ Mark Philips          │ Canada         │ Steve Johnson │
│ 13.86 │ Mark Philips          │ Canada         │ Steve Johnson │
│ 1.98  │ Jennifer Peterson     │ Canada         │ Jane Peacock  │
│ 13.86 │ Jennifer Peterson     │ Canada         │ Jane Peacock  │
│ 9.91  │ Jennifer Peterson     │ Canada         │ Jane Peacock  │
│ 1.98  │ Jennifer Peterson     │ Canada         │ Jane Peacock  │
│ 3.96  │ Jennifer Peterson     │ Canada         │ Jane Peacock  │
│ 5.94  │ Jennifer Peterson     │ Canada         │ Jane Peacock  │
│ 0.99  │ Jennifer Peterson     │ Canada         │ Jane Peacock  │
│ 0.99  │ Frank Harris          │ USA            │ Margaret Park │
│ 1.98  │ Frank Harris          │ USA            │ Margaret Park │
│ 13.86 │ Frank Harris          │ USA            │ Margaret Park │
│ 8.91  │ Frank Harris          │ USA            │ Margaret Park │
│ 1.98  │ Frank Harris          │ USA            │ Margaret Park │
│ 3.96  │ Frank Harris          │ USA            │ Margaret Park │
│ 5.94  │ Frank Harris          │ USA            │ Margaret Park │
│ 1.98  │ Jack Smith            │ USA            │ Steve Johnson │
│ 3.96  │ Jack Smith            │ USA            │ Steve Johnson │
│ 5.94  │ Jack Smith            │ USA            │ Steve Johnson │
│ 0.99  │ Jack Smith            │ USA            │ Steve Johnson │
│ 1.98  │ Jack Smith            │ USA            │ Steve Johnson │
│ 13.86 │ Jack Smith            │ USA            │ Steve Johnson │
│ 10.91 │ Jack Smith            │ USA            │ Steve Johnson │
│ 1.98  │ Michelle Brooks       │ USA            │ Jane Peacock  │
│ 3.96  │ Michelle Brooks       │ USA            │ Jane Peacock  │
│ 5.94  │ Michelle Brooks       │ USA            │ Jane Peacock  │
│ 0.99  │ Michelle Brooks       │ USA            │ Jane Peacock  │
│ 1.98  │ Michelle Brooks       │ USA            │ Jane Peacock  │
│ 13.86 │ Michelle Brooks       │ USA            │ Jane Peacock  │
│ 8.91  │ Michelle Brooks       │ USA            │ Jane Peacock  │
│ 1.98  │ Tim Goyer             │ USA            │ Jane Peacock  │
│ 13.86 │ Tim Goyer             │ USA            │ Jane Peacock  │
│ 8.91  │ Tim Goyer             │ USA            │ Jane Peacock  │
│ 1.98  │ Tim Goyer             │ USA            │ Jane Peacock  │
│ 3.96  │ Tim Goyer             │ USA            │ Jane Peacock  │
│ 5.94  │ Tim Goyer             │ USA            │ Jane Peacock  │
│ 1.99  │ Tim Goyer             │ USA            │ Jane Peacock  │
│ 1.98  │ Dan Miller            │ USA            │ Margaret Park │
│ 13.86 │ Dan Miller            │ USA            │ Margaret Park │
│ 8.91  │ Dan Miller            │ USA            │ Margaret Park │
│ 3.98  │ Dan Miller            │ USA            │ Margaret Park │
│ 3.96  │ Dan Miller            │ USA            │ Margaret Park │
│ 5.94  │ Dan Miller            │ USA            │ Margaret Park │
│ 0.99  │ Dan Miller            │ USA            │ Margaret Park │
│ 3.96  │ Kathy Chase           │ USA            │ Steve Johnson │
│ 5.94  │ Kathy Chase           │ USA            │ Steve Johnson │
│ 0.99  │ Kathy Chase           │ USA            │ Steve Johnson │
│ 1.98  │ Kathy Chase           │ USA            │ Steve Johnson │
│ 13.86 │ Kathy Chase           │ USA            │ Steve Johnson │
│ 8.91  │ Kathy Chase           │ USA            │ Steve Johnson │
│ 1.98  │ Kathy Chase           │ USA            │ Steve Johnson │
│ 1.98  │ Heather Leacock       │ USA            │ Margaret Park │
│ 3.96  │ Heather Leacock       │ USA            │ Margaret Park │
│ 5.94  │ Heather Leacock       │ USA            │ Margaret Park │
│ 0.99  │ Heather Leacock       │ USA            │ Margaret Park │
│ 3.98  │ Heather Leacock       │ USA            │ Margaret Park │
│ 13.86 │ Heather Leacock       │ USA            │ Margaret Park │
│ 8.91  │ Heather Leacock       │ USA            │ Margaret Park │
│ 13.86 │ John Gordon           │ USA            │ Margaret Park │
│ 8.91  │ John Gordon           │ USA            │ Margaret Park │
│ 1.98  │ John Gordon           │ USA            │ Margaret Park │
│ 3.96  │ John Gordon           │ USA            │ Margaret Park │
│ 5.94  │ John Gordon           │ USA            │ Margaret Park │
│ 0.99  │ John Gordon           │ USA            │ Margaret Park │
│ 1.98  │ John Gordon           │ USA            │ Margaret Park │
│ 1.98  │ Frank Ralston         │ USA            │ Jane Peacock  │
│ 15.86 │ Frank Ralston         │ USA            │ Jane Peacock  │
│ 8.91  │ Frank Ralston         │ USA            │ Jane Peacock  │
│ 1.98  │ Frank Ralston         │ USA            │ Jane Peacock  │
│ 7.96  │ Frank Ralston         │ USA            │ Jane Peacock  │
│ 5.94  │ Frank Ralston         │ USA            │ Jane Peacock  │
│ 0.99  │ Frank Ralston         │ USA            │ Jane Peacock  │
│ 5.94  │ Victor Stevens        │ USA            │ Steve Johnson │
│ 0.99  │ Victor Stevens        │ USA            │ Steve Johnson │
│ 1.98  │ Victor Stevens        │ USA            │ Steve Johnson │
│ 18.86 │ Victor Stevens        │ USA            │ Steve Johnson │
│ 8.91  │ Victor Stevens        │ USA            │ Steve Johnson │
│ 1.98  │ Victor Stevens        │ USA            │ Steve Johnson │
│ 3.96  │ Victor Stevens        │ USA            │ Steve Johnson │
│ 1.98  │ Richard Cunningham    │ USA            │ Margaret Park │
│ 3.96  │ Richard Cunningham    │ USA            │ Margaret Park │
│ 5.94  │ Richard Cunningham    │ USA            │ Margaret Park │
│ 0.99  │ Richard Cunningham    │ USA            │ Margaret Park │
│ 1.98  │ Richard Cunningham    │ USA            │ Margaret Park │
│ 23.86 │ Richard Cunningham    │ USA            │ Margaret Park │
│ 8.91  │ Richard Cunningham    │ USA            │ Margaret Park │
│ 8.91  │ Patrick Gray          │ USA            │ Margaret Park │
│ 1.98  │ Patrick Gray          │ USA            │ Margaret Park │
│ 3.96  │ Patrick Gray          │ USA            │ Margaret Park │
│ 5.94  │ Patrick Gray          │ USA            │ Margaret Park │
│ 0.99  │ Patrick Gray          │ USA            │ Margaret Park │
│ 1.98  │ Patrick Gray          │ USA            │ Margaret Park │
│ 13.86 │ Patrick Gray          │ USA            │ Margaret Park │
│ 1.98  │ Julia Barnett         │ USA            │ Steve Johnson │
│ 13.86 │ Julia Barnett         │ USA            │ Steve Johnson │
│ 8.91  │ Julia Barnett         │ USA            │ Steve Johnson │
│ 1.98  │ Julia Barnett         │ USA            │ Steve Johnson │
│ 3.96  │ Julia Barnett         │ USA            │ Steve Johnson │
│ 11.94 │ Julia Barnett         │ USA            │ Steve Johnson │
│ 0.99  │ Julia Barnett         │ USA            │ Steve Johnson │
│ 0.99  │ Robert Brown          │ Canada         │ Jane Peacock  │
│ 1.98  │ Robert Brown          │ Canada         │ Jane Peacock  │
│ 13.86 │ Robert Brown          │ Canada         │ Jane Peacock  │
│ 8.91  │ Robert Brown          │ Canada         │ Jane Peacock  │
│ 1.98  │ Robert Brown          │ Canada         │ Jane Peacock  │
│ 3.96  │ Robert Brown          │ Canada         │ Jane Peacock  │
│ 5.94  │ Robert Brown          │ Canada         │ Jane Peacock  │
│ 1.98  │ Edward Francis        │ Canada         │ Jane Peacock  │
│ 3.96  │ Edward Francis        │ Canada         │ Jane Peacock  │
│ 5.94  │ Edward Francis        │ Canada         │ Jane Peacock  │
│ 0.99  │ Edward Francis        │ Canada         │ Jane Peacock  │
│ 1.98  │ Edward Francis        │ Canada         │ Jane Peacock  │
│ 13.86 │ Edward Francis        │ Canada         │ Jane Peacock  │
│ 8.91  │ Edward Francis        │ Canada         │ Jane Peacock  │
│ 8.91  │ Martha Silk           │ Canada         │ Steve Johnson │
│ 1.98  │ Martha Silk           │ Canada         │ Steve Johnson │
│ 3.96  │ Martha Silk           │ Canada         │ Steve Johnson │
│ 5.94  │ Martha Silk           │ Canada         │ Steve Johnson │
│ 0.99  │ Martha Silk           │ Canada         │ Steve Johnson │
│ 1.98  │ Martha Silk           │ Canada         │ Steve Johnson │
│ 13.86 │ Martha Silk           │ Canada         │ Steve Johnson │
│ 1.98  │ Aaron Mitchell        │ Canada         │ Margaret Park │
│ 13.86 │ Aaron Mitchell        │ Canada         │ Margaret Park │
│ 8.91  │ Aaron Mitchell        │ Canada         │ Margaret Park │
│ 1.98  │ Aaron Mitchell        │ Canada         │ Margaret Park │
│ 3.96  │ Aaron Mitchell        │ Canada         │ Margaret Park │
│ 5.94  │ Aaron Mitchell        │ Canada         │ Margaret Park │
│ 0.99  │ Aaron Mitchell        │ Canada         │ Margaret Park │
│ 0.99  │ Ellie Sullivan        │ Canada         │ Jane Peacock  │
│ 1.98  │ Ellie Sullivan        │ Canada         │ Jane Peacock  │
│ 13.86 │ Ellie Sullivan        │ Canada         │ Jane Peacock  │
│ 8.91  │ Ellie Sullivan        │ Canada         │ Jane Peacock  │
│ 1.98  │ Ellie Sullivan        │ Canada         │ Jane Peacock  │
│ 3.96  │ Ellie Sullivan        │ Canada         │ Jane Peacock  │
│ 5.94  │ Ellie Sullivan        │ Canada         │ Jane Peacock  │
│ 1.98  │ João Fernandes        │ Portugal       │ Margaret Park │
│ 3.96  │ João Fernandes        │ Portugal       │ Margaret Park │
│ 5.94  │ João Fernandes        │ Portugal       │ Margaret Park │
│ 0.99  │ João Fernandes        │ Portugal       │ Margaret Park │
│ 1.98  │ João Fernandes        │ Portugal       │ Margaret Park │
│ 13.86 │ João Fernandes        │ Portugal       │ Margaret Park │
│ 10.91 │ João Fernandes        │ Portugal       │ Margaret Park │
│ 1.98  │ Madalena Sampaio      │ Portugal       │ Margaret Park │
│ 3.96  │ Madalena Sampaio      │ Portugal       │ Margaret Park │
│ 5.94  │ Madalena Sampaio      │ Portugal       │ Margaret Park │
│ 0.99  │ Madalena Sampaio      │ Portugal       │ Margaret Park │
│ 1.98  │ Madalena Sampaio      │ Portugal       │ Margaret Park │
│ 13.86 │ Madalena Sampaio      │ Portugal       │ Margaret Park │
│ 8.91  │ Madalena Sampaio      │ Portugal       │ Margaret Park │
│ 1.98  │ Hannah Schneider      │ Germany        │ Steve Johnson │
│ 13.86 │ Hannah Schneider      │ Germany        │ Steve Johnson │
│ 8.91  │ Hannah Schneider      │ Germany        │ Steve Johnson │
│ 1.98  │ Hannah Schneider      │ Germany        │ Steve Johnson │
│ 3.96  │ Hannah Schneider      │ Germany        │ Steve Johnson │
│ 5.94  │ Hannah Schneider      │ Germany        │ Steve Johnson │
│ 0.99  │ Hannah Schneider      │ Germany        │ Steve Johnson │
│ 0.99  │ Fynn Zimmermann       │ Germany        │ Jane Peacock  │
│ 1.98  │ Fynn Zimmermann       │ Germany        │ Jane Peacock  │
│ 13.86 │ Fynn Zimmermann       │ Germany        │ Jane Peacock  │
│ 14.91 │ Fynn Zimmermann       │ Germany        │ Jane Peacock  │
│ 1.98  │ Fynn Zimmermann       │ Germany        │ Jane Peacock  │
│ 3.96  │ Fynn Zimmermann       │ Germany        │ Jane Peacock  │
│ 5.94  │ Fynn Zimmermann       │ Germany        │ Jane Peacock  │
│ 1.98  │ Niklas Schröder       │ Germany        │ Jane Peacock  │
│ 3.96  │ Niklas Schröder       │ Germany        │ Jane Peacock  │
│ 5.94  │ Niklas Schröder       │ Germany        │ Jane Peacock  │
│ 0.99  │ Niklas Schröder       │ Germany        │ Jane Peacock  │
│ 1.98  │ Niklas Schröder       │ Germany        │ Jane Peacock  │
│ 13.86 │ Niklas Schröder       │ Germany        │ Jane Peacock  │
│ 8.91  │ Niklas Schröder       │ Germany        │ Jane Peacock  │
│ 1.98  │ Camille Bernard       │ France         │ Margaret Park │
│ 3.96  │ Camille Bernard       │ France         │ Margaret Park │
│ 5.94  │ Camille Bernard       │ France         │ Margaret Park │
│ 1.99  │ Camille Bernard       │ France         │ Margaret Park │
│ 1.98  │ Camille Bernard       │ France         │ Margaret Park │
│ 13.86 │ Camille Bernard       │ France         │ Margaret Park │
│ 8.91  │ Camille Bernard       │ France         │ Margaret Park │
│ 1.98  │ Dominique Lefebvre    │ France         │ Margaret Park │
│ 13.86 │ Dominique Lefebvre    │ France         │ Margaret Park │
│ 8.91  │ Dominique Lefebvre    │ France         │ Margaret Park │
│ 2.98  │ Dominique Lefebvre    │ France         │ Margaret Park │
│ 3.96  │ Dominique Lefebvre    │ France         │ Margaret Park │
│ 5.94  │ Dominique Lefebvre    │ France         │ Margaret Park │
│ 0.99  │ Dominique Lefebvre    │ France         │ Margaret Park │
│ 1.98  │ Marc Dubois           │ France         │ Steve Johnson │
│ 13.86 │ Marc Dubois           │ France         │ Steve Johnson │
│ 8.91  │ Marc Dubois           │ France         │ Steve Johnson │
│ 1.98  │ Marc Dubois           │ France         │ Steve Johnson │
│ 3.96  │ Marc Dubois           │ France         │ Steve Johnson │
│ 5.94  │ Marc Dubois           │ France         │ Steve Johnson │
│ 0.99  │ Marc Dubois           │ France         │ Steve Johnson │
│ 3.96  │ Wyatt Girard          │ France         │ Jane Peacock  │
│ 5.94  │ Wyatt Girard          │ France         │ Jane Peacock  │
│ 0.99  │ Wyatt Girard          │ France         │ Jane Peacock  │
│ 3.98  │ Wyatt Girard          │ France         │ Jane Peacock  │
│ 13.86 │ Wyatt Girard          │ France         │ Jane Peacock  │
│ 8.91  │ Wyatt Girard          │ France         │ Jane Peacock  │
│ 1.98  │ Wyatt Girard          │ France         │ Jane Peacock  │
│ 1.98  │ Isabelle Mercier      │ France         │ Jane Peacock  │
│ 3.96  │ Isabelle Mercier      │ France         │ Jane Peacock  │
│ 5.94  │ Isabelle Mercier      │ France         │ Jane Peacock  │
│ 0.99  │ Isabelle Mercier      │ France         │ Jane Peacock  │
│ 1.98  │ Isabelle Mercier      │ France         │ Jane Peacock  │
│ 16.86 │ Isabelle Mercier      │ France         │ Jane Peacock  │
│ 8.91  │ Isabelle Mercier      │ France         │ Jane Peacock  │
│ 8.91  │ Terhi Hämäläinen      │ Finland        │ Jane Peacock  │
│ 1.98  │ Terhi Hämäläinen      │ Finland        │ Jane Peacock  │
│ 7.96  │ Terhi Hämäläinen      │ Finland        │ Jane Peacock  │
│ 5.94  │ Terhi Hämäläinen      │ Finland        │ Jane Peacock  │
│ 0.99  │ Terhi Hämäläinen      │ Finland        │ Jane Peacock  │
│ 1.98  │ Terhi Hämäläinen      │ Finland        │ Jane Peacock  │
│ 13.86 │ Terhi Hämäläinen      │ Finland        │ Jane Peacock  │
│ 1.98  │ Ladislav Kovács       │ Hungary        │ Jane Peacock  │
│ 21.86 │ Ladislav Kovács       │ Hungary        │ Jane Peacock  │
│ 8.91  │ Ladislav Kovács       │ Hungary        │ Jane Peacock  │
│ 1.98  │ Ladislav Kovács       │ Hungary        │ Jane Peacock  │
│ 3.96  │ Ladislav Kovács       │ Hungary        │ Jane Peacock  │
│ 5.94  │ Ladislav Kovács       │ Hungary        │ Jane Peacock  │
│ 0.99  │ Ladislav Kovács       │ Hungary        │ Jane Peacock  │
│ 5.94  │ Hugh O'Reilly         │ Ireland        │ Jane Peacock  │
│ 0.99  │ Hugh O'Reilly         │ Ireland        │ Jane Peacock  │
│ 1.98  │ Hugh O'Reilly         │ Ireland        │ Jane Peacock  │
│ 21.86 │ Hugh O'Reilly         │ Ireland        │ Jane Peacock  │
│ 8.91  │ Hugh O'Reilly         │ Ireland        │ Jane Peacock  │
│ 1.98  │ Hugh O'Reilly         │ Ireland        │ Jane Peacock  │
│ 3.96  │ Hugh O'Reilly         │ Ireland        │ Jane Peacock  │
│ 1.98  │ Lucas Mancini         │ Italy          │ Steve Johnson │
│ 3.96  │ Lucas Mancini         │ Italy          │ Steve Johnson │
│ 5.94  │ Lucas Mancini         │ Italy          │ Steve Johnson │
│ 0.99  │ Lucas Mancini         │ Italy          │ Steve Johnson │
│ 1.98  │ Lucas Mancini         │ Italy          │ Steve Johnson │
│ 13.86 │ Lucas Mancini         │ Italy          │ Steve Johnson │
│ 8.91  │ Lucas Mancini         │ Italy          │ Steve Johnson │
│ 8.91  │ Johannes Van der Berg │ Netherlands    │ Steve Johnson │
│ 1.98  │ Johannes Van der Berg │ Netherlands    │ Steve Johnson │
│ 3.96  │ Johannes Van der Berg │ Netherlands    │ Steve Johnson │
│ 8.94  │ Johannes Van der Berg │ Netherlands    │ Steve Johnson │
│ 0.99  │ Johannes Van der Berg │ Netherlands    │ Steve Johnson │
│ 1.98  │ Johannes Van der Berg │ Netherlands    │ Steve Johnson │
│ 13.86 │ Johannes Van der Berg │ Netherlands    │ Steve Johnson │
│ 1.98  │ Stanisław Wójcik      │ Poland         │ Margaret Park │
│ 13.86 │ Stanisław Wójcik      │ Poland         │ Margaret Park │
│ 8.91  │ Stanisław Wójcik      │ Poland         │ Margaret Park │
│ 1.98  │ Stanisław Wójcik      │ Poland         │ Margaret Park │
│ 3.96  │ Stanisław Wójcik      │ Poland         │ Margaret Park │
│ 5.94  │ Stanisław Wójcik      │ Poland         │ Margaret Park │
│ 0.99  │ Stanisław Wójcik      │ Poland         │ Margaret Park │
│ 0.99  │ Enrique Muñoz         │ Spain          │ Steve Johnson │
│ 1.98  │ Enrique Muñoz         │ Spain          │ Steve Johnson │
│ 13.86 │ Enrique Muñoz         │ Spain          │ Steve Johnson │
│ 8.91  │ Enrique Muñoz         │ Spain          │ Steve Johnson │
│ 1.98  │ Enrique Muñoz         │ Spain          │ Steve Johnson │
│ 3.96  │ Enrique Muñoz         │ Spain          │ Steve Johnson │
│ 5.94  │ Enrique Muñoz         │ Spain          │ Steve Johnson │
│ 1.98  │ Joakim Johansson      │ Sweden         │ Steve Johnson │
│ 3.96  │ Joakim Johansson      │ Sweden         │ Steve Johnson │
│ 6.94  │ Joakim Johansson      │ Sweden         │ Steve Johnson │
│ 0.99  │ Joakim Johansson      │ Sweden         │ Steve Johnson │
│ 1.98  │ Joakim Johansson      │ Sweden         │ Steve Johnson │
│ 13.86 │ Joakim Johansson      │ Sweden         │ Steve Johnson │
│ 8.91  │ Joakim Johansson      │ Sweden         │ Steve Johnson │
│ 8.91  │ Emma Jones            │ United Kingdom │ Jane Peacock  │
│ 1.98  │ Emma Jones            │ United Kingdom │ Jane Peacock  │
│ 3.96  │ Emma Jones            │ United Kingdom │ Jane Peacock  │
│ 5.94  │ Emma Jones            │ United Kingdom │ Jane Peacock  │
│ 0.99  │ Emma Jones            │ United Kingdom │ Jane Peacock  │
│ 1.98  │ Emma Jones            │ United Kingdom │ Jane Peacock  │
│ 13.86 │ Emma Jones            │ United Kingdom │ Jane Peacock  │
│ 1.98  │ Phil Hughes           │ United Kingdom │ Jane Peacock  │
│ 13.86 │ Phil Hughes           │ United Kingdom │ Jane Peacock  │
│ 8.91  │ Phil Hughes           │ United Kingdom │ Jane Peacock  │
│ 1.98  │ Phil Hughes           │ United Kingdom │ Jane Peacock  │
│ 3.96  │ Phil Hughes           │ United Kingdom │ Jane Peacock  │
│ 5.94  │ Phil Hughes           │ United Kingdom │ Jane Peacock  │
│ 0.99  │ Phil Hughes           │ United Kingdom │ Jane Peacock  │
│ 0.99  │ Steve Murray          │ United Kingdom │ Steve Johnson │
│ 1.98  │ Steve Murray          │ United Kingdom │ Steve Johnson │
│ 13.86 │ Steve Murray          │ United Kingdom │ Steve Johnson │
│ 8.91  │ Steve Murray          │ United Kingdom │ Steve Johnson │
│ 1.98  │ Steve Murray          │ United Kingdom │ Steve Johnson │
│ 3.96  │ Steve Murray          │ United Kingdom │ Steve Johnson │
│ 5.94  │ Steve Murray          │ United Kingdom │ Steve Johnson │
│ 1.98  │ Mark Taylor           │ Australia      │ Margaret Park │
│ 3.96  │ Mark Taylor           │ Australia      │ Margaret Park │
│ 5.94  │ Mark Taylor           │ Australia      │ Margaret Park │
│ 0.99  │ Mark Taylor           │ Australia      │ Margaret Park │
│ 1.98  │ Mark Taylor           │ Australia      │ Margaret Park │
│ 13.86 │ Mark Taylor           │ Australia      │ Margaret Park │
│ 8.91  │ Mark Taylor           │ Australia      │ Margaret Park │
│ 1.98  │ Diego Gutiérrez       │ Argentina      │ Margaret Park │
│ 3.96  │ Diego Gutiérrez       │ Argentina      │ Margaret Park │
│ 5.94  │ Diego Gutiérrez       │ Argentina      │ Margaret Park │
│ 0.99  │ Diego Gutiérrez       │ Argentina      │ Margaret Park │
│ 1.98  │ Diego Gutiérrez       │ Argentina      │ Margaret Park │
│ 13.86 │ Diego Gutiérrez       │ Argentina      │ Margaret Park │
│ 8.91  │ Diego Gutiérrez       │ Argentina      │ Margaret Park │
│ 1.98  │ Luis Rojas            │ Chile          │ Steve Johnson │
│ 13.86 │ Luis Rojas            │ Chile          │ Steve Johnson │
│ 17.91 │ Luis Rojas            │ Chile          │ Steve Johnson │
│ 1.98  │ Luis Rojas            │ Chile          │ Steve Johnson │
│ 3.96  │ Luis Rojas            │ Chile          │ Steve Johnson │
│ 5.94  │ Luis Rojas            │ Chile          │ Steve Johnson │
│ 0.99  │ Luis Rojas            │ Chile          │ Steve Johnson │
│ 1.98  │ Manoj Pareek          │ India          │ Jane Peacock  │
│ 13.86 │ Manoj Pareek          │ India          │ Jane Peacock  │
│ 8.91  │ Manoj Pareek          │ India          │ Jane Peacock  │
│ 1.98  │ Manoj Pareek          │ India          │ Jane Peacock  │
│ 3.96  │ Manoj Pareek          │ India          │ Jane Peacock  │
│ 5.94  │ Manoj Pareek          │ India          │ Jane Peacock  │
│ 1.99  │ Manoj Pareek          │ India          │ Jane Peacock  │
│ 3.96  │ Puja Srivastava       │ India          │ Jane Peacock  │
│ 5.94  │ Puja Srivastava       │ India          │ Jane Peacock  │
│ 1.99  │ Puja Srivastava       │ India          │ Jane Peacock  │
│ 1.98  │ Puja Srivastava       │ India          │ Jane Peacock  │
│ 13.86 │ Puja Srivastava       │ India          │ Jane Peacock  │
│ 8.91  │ Puja Srivastava       │ India          │ Jane Peacock  │
└───────┴───────────────────────┴────────────────┴───────────────┘

**/

--¿Cuántas facturas hubo en 2009 y 2011? ¿Cuáles son las ventas totales respectivas para cada uno de esos años?


SELECT  COUNT(invoiceid) as total_ventas FROM invoices WHERE invoiceDate REGEXP '2009' or invoicedate REGEXP '2011';

/**
┌──────────────┐
│ total_ventas │
├──────────────┤
│ 166          │
└──────────────┘
**/


--Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para el ID de factura 37.

SELECT COUNT(InvoiceLineId) as total_items from invoice_items      
   ...> WHERE InvoiceId = 37;

/**
┌─────────────┐
│ total_items │
├─────────────┤
│ 4           │
└─────────────┘
**/


-- Proporciona una consulta que muestre solo los empleados que son Agentes de Ventas.

select * from employees where Title ='Sales Manager';
/**
┌────────────┬──────────┬───────────┬───────────────┬───────────┬─────────────────────┬─────────────────────┬──────────────┬─────────┬───────┬─────────┬────────────┬───────────────────┬───────────────────┬───────────────────────┐
│ EmployeeId │ LastName │ FirstName │     Title     │ ReportsTo │      BirthDate      │      HireDate       │   Address    │  City   │ State │ Country │ PostalCode │       Phone       │        Fax        │         Email         │
├────────────┼──────────┼───────────┼───────────────┼───────────┼─────────────────────┼─────────────────────┼──────────────┼─────────┼───────┼─────────┼────────────┼───────────────────┼───────────────────┼───────────────────────┤
│ 2          │ Edwards  │ Nancy     │ Sales Manager │ 1         │ 1958-12-08 00:00:00 │ 2002-05-01 00:00:00 │ 825 8 Ave SW │ Calgary │ AB    │ Canada  │ T2P 2T3    │ +1 (403) 262-3443 │ +1 (403) 262-3322 │ nancy@chinookcorp.com │
└────────────┴──────────┴───────────┴───────────────┴───────────┴─────────────────────┴─────────────────────┴──────────────┴─────────┴───────┴─────────┴────────────┴───────────────────┴───────────────────┴───────────────────────┘
**/

-- Proporciona una consulta que muestre una lista única de países de facturación de la tabla de Facturas.


-- Proporciona una consulta que muestre las facturas de clientes que son de Brasil.


-- Proporciona una consulta que muestre las facturas asociadas con cada agente de ventas. La tabla resultante debe incluir el nombre completo del Agente de Ventas.


-- Proporciona una consulta que muestre el Total de la Factura, nombre del cliente, país y nombre del Agente de Ventas para todas las facturas y clientes.


-- ¿Cuántas facturas hubo en 2009 y 2011? ¿Cuáles son las ventas totales respectivas para cada uno de esos años?


-- Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para el ID de factura 37.


-- Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para cada Factura. PISTA: GROUP BY


-- Proporciona una consulta que incluya el nombre de la pista con cada ítem de línea de factura.


-- Proporciona una consulta que incluya el nombre de la pista comprada Y el nombre del artista con cada ítem de línea de factura.


-- Proporciona una consulta que muestre el número total de pistas en cada lista de reproducción. El nombre de la lista de reproducción debe estar incluido en la tabla resultante.


-- Proporciona una consulta que muestre todas las pistas, pero no muestre IDs. La tabla resultante debe incluir el nombre del álbum, el tipo de medio y el género.


-- Proporciona una consulta que muestre todas las facturas.

 Select * from Invoices;
 /**
┌───────────┬────────────┬─────────────────────┬──────────────────────────────────────────┬─────────────────────┬──────────────┬────────────────┬───────────────────┬───────┐
│ InvoiceId │ CustomerId │     InvoiceDate     │              BillingAddress              │     BillingCity     │ BillingState │ BillingCountry │ BillingPostalCode │ Total │
├───────────┼────────────┼─────────────────────┼──────────────────────────────────────────┼─────────────────────┼──────────────┼────────────────┼───────────────────┼───────┤
│ 1         │ 2          │ 2009-01-01 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 1.98  │
│ 2         │ 4          │ 2009-01-02 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 3.96  │
│ 3         │ 8          │ 2009-01-03 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 5.94  │
│ 4         │ 14         │ 2009-01-06 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 8.91  │
│ 5         │ 23         │ 2009-01-11 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 13.86 │
│ 6         │ 37         │ 2009-01-19 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 0.99  │
│ 7         │ 38         │ 2009-02-01 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 1.98  │
│ 8         │ 40         │ 2009-02-01 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 1.98  │
│ 9         │ 42         │ 2009-02-02 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 3.96  │
│ 10        │ 46         │ 2009-02-03 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 5.94  │
│ 11        │ 52         │ 2009-02-06 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 8.91  │
│ 12        │ 2          │ 2009-02-11 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 13.86 │
│ 13        │ 16         │ 2009-02-19 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 0.99  │
│ 14        │ 17         │ 2009-03-04 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 1.98  │
│ 15        │ 19         │ 2009-03-04 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.98  │
│ 16        │ 21         │ 2009-03-05 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 3.96  │
│ 17        │ 25         │ 2009-03-06 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 5.94  │
│ 18        │ 31         │ 2009-03-09 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 8.91  │
│ 19        │ 40         │ 2009-03-14 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 13.86 │
│ 20        │ 54         │ 2009-03-22 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 0.99  │
│ 21        │ 55         │ 2009-04-04 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 1.98  │
│ 22        │ 57         │ 2009-04-04 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 1.98  │
│ 23        │ 59         │ 2009-04-05 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 3.96  │
│ 24        │ 4          │ 2009-04-06 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 5.94  │
│ 25        │ 10         │ 2009-04-09 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 8.91  │
│ 26        │ 19         │ 2009-04-14 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 13.86 │
│ 27        │ 33         │ 2009-04-22 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 0.99  │
│ 28        │ 34         │ 2009-05-05 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 1.98  │
│ 29        │ 36         │ 2009-05-05 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 1.98  │
│ 30        │ 38         │ 2009-05-06 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 3.96  │
│ 31        │ 42         │ 2009-05-07 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 5.94  │
│ 32        │ 48         │ 2009-05-10 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 8.91  │
│ 33        │ 57         │ 2009-05-15 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 13.86 │
│ 34        │ 12         │ 2009-05-23 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 0.99  │
│ 35        │ 13         │ 2009-06-05 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ 36        │ 15         │ 2009-06-05 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 1.98  │
│ 37        │ 17         │ 2009-06-06 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 3.96  │
│ 38        │ 21         │ 2009-06-07 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 5.94  │
│ 39        │ 27         │ 2009-06-10 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 8.91  │
│ 40        │ 36         │ 2009-06-15 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 13.86 │
│ 41        │ 50         │ 2009-06-23 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 0.99  │
│ 42        │ 51         │ 2009-07-06 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 1.98  │
│ 43        │ 53         │ 2009-07-06 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 1.98  │
│ 44        │ 55         │ 2009-07-07 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 3.96  │
│ 45        │ 59         │ 2009-07-08 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 5.94  │
│ 46        │ 6          │ 2009-07-11 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 8.91  │
│ 47        │ 15         │ 2009-07-16 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 13.86 │
│ 48        │ 29         │ 2009-07-24 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 0.99  │
│ 49        │ 30         │ 2009-08-06 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 1.98  │
│ 50        │ 32         │ 2009-08-06 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 1.98  │
│ 51        │ 34         │ 2009-08-07 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 3.96  │
│ 52        │ 38         │ 2009-08-08 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 5.94  │
│ 53        │ 44         │ 2009-08-11 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 8.91  │
│ 54        │ 53         │ 2009-08-16 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 13.86 │
│ 55        │ 8          │ 2009-08-24 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 0.99  │
│ 56        │ 9          │ 2009-09-06 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 1.98  │
│ 57        │ 11         │ 2009-09-06 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ 58        │ 13         │ 2009-09-07 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 3.96  │
│ 59        │ 17         │ 2009-09-08 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 5.94  │
│ 60        │ 23         │ 2009-09-11 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 8.91  │
│ 61        │ 32         │ 2009-09-16 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 13.86 │
│ 62        │ 46         │ 2009-09-24 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 0.99  │
│ 63        │ 47         │ 2009-10-07 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 1.98  │
│ 64        │ 49         │ 2009-10-07 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 1.98  │
│ 65        │ 51         │ 2009-10-08 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 3.96  │
│ 66        │ 55         │ 2009-10-09 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 5.94  │
│ 67        │ 2          │ 2009-10-12 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 8.91  │
│ 68        │ 11         │ 2009-10-17 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 13.86 │
│ 69        │ 25         │ 2009-10-25 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 0.99  │
│ 70        │ 26         │ 2009-11-07 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 1.98  │
│ 71        │ 28         │ 2009-11-07 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 1.98  │
│ 72        │ 30         │ 2009-11-08 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 3.96  │
│ 73        │ 34         │ 2009-11-09 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 5.94  │
│ 74        │ 40         │ 2009-11-12 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 8.91  │
│ 75        │ 49         │ 2009-11-17 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 13.86 │
│ 76        │ 4          │ 2009-11-25 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 0.99  │
│ 77        │ 5          │ 2009-12-08 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 1.98  │
│ 78        │ 7          │ 2009-12-08 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 1.98  │
│ 79        │ 9          │ 2009-12-09 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 3.96  │
│ 80        │ 13         │ 2009-12-10 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 5.94  │
│ 81        │ 19         │ 2009-12-13 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 8.91  │
│ 82        │ 28         │ 2009-12-18 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 13.86 │
│ 83        │ 42         │ 2009-12-26 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 0.99  │
│ 84        │ 43         │ 2010-01-08 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 1.98  │
│ 85        │ 45         │ 2010-01-08 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 1.98  │
│ 86        │ 47         │ 2010-01-09 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 3.96  │
│ 87        │ 51         │ 2010-01-10 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 6.94  │
│ 88        │ 57         │ 2010-01-13 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 17.91 │
│ 89        │ 7          │ 2010-01-18 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 18.86 │
│ 90        │ 21         │ 2010-01-26 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 0.99  │
│ 91        │ 22         │ 2010-02-08 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 1.98  │
│ 92        │ 24         │ 2010-02-08 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 1.98  │
│ 93        │ 26         │ 2010-02-09 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 3.96  │
│ 94        │ 30         │ 2010-02-10 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 5.94  │
│ 95        │ 36         │ 2010-02-13 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 8.91  │
│ 96        │ 45         │ 2010-02-18 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 21.86 │
│ 97        │ 59         │ 2010-02-26 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 1.99  │
│ 98        │ 1          │ 2010-03-11 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.98  │
│ 99        │ 3          │ 2010-03-11 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 3.98  │
│ 100       │ 5          │ 2010-03-12 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 3.96  │
│ 101       │ 9          │ 2010-03-13 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 5.94  │
│ 102       │ 15         │ 2010-03-16 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 9.91  │
│ 103       │ 24         │ 2010-03-21 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 15.86 │
│ 104       │ 38         │ 2010-03-29 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 0.99  │
│ 105       │ 39         │ 2010-04-11 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.98  │
│ 106       │ 41         │ 2010-04-11 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 1.98  │
│ 107       │ 43         │ 2010-04-12 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 3.96  │
│ 108       │ 47         │ 2010-04-13 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 5.94  │
│ 109       │ 53         │ 2010-04-16 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 8.91  │
│ 110       │ 3          │ 2010-04-21 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 13.86 │
│ 111       │ 17         │ 2010-04-29 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 0.99  │
│ 112       │ 18         │ 2010-05-12 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 1.98  │
│ 113       │ 20         │ 2010-05-12 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 1.98  │
│ 114       │ 22         │ 2010-05-13 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 3.96  │
│ 115       │ 26         │ 2010-05-14 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 5.94  │
│ 116       │ 32         │ 2010-05-17 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 8.91  │
│ 117       │ 41         │ 2010-05-22 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 13.86 │
│ 118       │ 55         │ 2010-05-30 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 0.99  │
│ 119       │ 56         │ 2010-06-12 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 1.98  │
│ 120       │ 58         │ 2010-06-12 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.98  │
│ 121       │ 1          │ 2010-06-13 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.96  │
│ 122       │ 5          │ 2010-06-14 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 5.94  │
│ 123       │ 11         │ 2010-06-17 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 8.91  │
│ 124       │ 20         │ 2010-06-22 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 13.86 │
│ 125       │ 34         │ 2010-06-30 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 0.99  │
│ 126       │ 35         │ 2010-07-13 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 1.98  │
│ 127       │ 37         │ 2010-07-13 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 1.98  │
│ 128       │ 39         │ 2010-07-14 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 3.96  │
│ 129       │ 43         │ 2010-07-15 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 5.94  │
│ 130       │ 49         │ 2010-07-18 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 8.91  │
│ 131       │ 58         │ 2010-07-23 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 13.86 │
│ 132       │ 13         │ 2010-07-31 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 0.99  │
│ 133       │ 14         │ 2010-08-13 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 1.98  │
│ 134       │ 16         │ 2010-08-13 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 1.98  │
│ 135       │ 18         │ 2010-08-14 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 3.96  │
│ 136       │ 22         │ 2010-08-15 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 5.94  │
│ 137       │ 28         │ 2010-08-18 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 8.91  │
│ 138       │ 37         │ 2010-08-23 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 13.86 │
│ 139       │ 51         │ 2010-08-31 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 0.99  │
│ 140       │ 52         │ 2010-09-13 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 1.98  │
│ 141       │ 54         │ 2010-09-13 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 1.98  │
│ 142       │ 56         │ 2010-09-14 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 3.96  │
│ 143       │ 1          │ 2010-09-15 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 5.94  │
│ 144       │ 7          │ 2010-09-18 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 8.91  │
│ 145       │ 16         │ 2010-09-23 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 13.86 │
│ 146       │ 30         │ 2010-10-01 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 0.99  │
│ 147       │ 31         │ 2010-10-14 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 1.98  │
│ 148       │ 33         │ 2010-10-14 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 1.98  │
│ 149       │ 35         │ 2010-10-15 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 3.96  │
│ 150       │ 39         │ 2010-10-16 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 5.94  │
│ 151       │ 45         │ 2010-10-19 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 8.91  │
│ 152       │ 54         │ 2010-10-24 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 13.86 │
│ 153       │ 9          │ 2010-11-01 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 0.99  │
│ 154       │ 10         │ 2010-11-14 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ 155       │ 12         │ 2010-11-14 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ 156       │ 14         │ 2010-11-15 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 3.96  │
│ 157       │ 18         │ 2010-11-16 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 5.94  │
│ 158       │ 24         │ 2010-11-19 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 8.91  │
│ 159       │ 33         │ 2010-11-24 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 13.86 │
│ 160       │ 47         │ 2010-12-02 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 0.99  │
│ 161       │ 48         │ 2010-12-15 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 1.98  │
│ 162       │ 50         │ 2010-12-15 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 1.98  │
│ 163       │ 52         │ 2010-12-16 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 3.96  │
│ 164       │ 56         │ 2010-12-17 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 5.94  │
│ 165       │ 3          │ 2010-12-20 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 8.91  │
│ 166       │ 12         │ 2010-12-25 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 13.86 │
│ 167       │ 26         │ 2011-01-02 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 0.99  │
│ 168       │ 27         │ 2011-01-15 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 1.98  │
│ 169       │ 29         │ 2011-01-15 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 1.98  │
│ 170       │ 31         │ 2011-01-16 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 3.96  │
│ 171       │ 35         │ 2011-01-17 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 5.94  │
│ 172       │ 41         │ 2011-01-20 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 8.91  │
│ 173       │ 50         │ 2011-01-25 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 13.86 │
│ 174       │ 5          │ 2011-02-02 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 0.99  │
│ 175       │ 6          │ 2011-02-15 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 1.98  │
│ 176       │ 8          │ 2011-02-15 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 1.98  │
│ 177       │ 10         │ 2011-02-16 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 3.96  │
│ 178       │ 14         │ 2011-02-17 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 5.94  │
│ 179       │ 20         │ 2011-02-20 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 8.91  │
│ 180       │ 29         │ 2011-02-25 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 13.86 │
│ 181       │ 43         │ 2011-03-05 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 0.99  │
│ 182       │ 44         │ 2011-03-18 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 1.98  │
│ 183       │ 46         │ 2011-03-18 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 1.98  │
│ 184       │ 48         │ 2011-03-19 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 3.96  │
│ 185       │ 52         │ 2011-03-20 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 5.94  │
│ 186       │ 58         │ 2011-03-23 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 8.91  │
│ 187       │ 8          │ 2011-03-28 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 13.86 │
│ 188       │ 22         │ 2011-04-05 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 0.99  │
│ 189       │ 23         │ 2011-04-18 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 1.98  │
│ 190       │ 25         │ 2011-04-18 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 1.98  │
│ 191       │ 27         │ 2011-04-19 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 3.96  │
│ 192       │ 31         │ 2011-04-20 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 5.94  │
│ 193       │ 37         │ 2011-04-23 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 14.91 │
│ 194       │ 46         │ 2011-04-28 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 21.86 │
│ 195       │ 1          │ 2011-05-06 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 0.99  │
│ 196       │ 2          │ 2011-05-19 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 1.98  │
│ 197       │ 4          │ 2011-05-19 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 1.98  │
│ 198       │ 6          │ 2011-05-20 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 3.96  │
│ 199       │ 10         │ 2011-05-21 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 5.94  │
│ 200       │ 16         │ 2011-05-24 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 8.91  │
│ 201       │ 25         │ 2011-05-29 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 18.86 │
│ 202       │ 39         │ 2011-06-06 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.99  │
│ 203       │ 40         │ 2011-06-19 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 2.98  │
│ 204       │ 42         │ 2011-06-19 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 3.98  │
│ 205       │ 44         │ 2011-06-20 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 7.96  │
│ 206       │ 48         │ 2011-06-21 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 8.94  │
│ 207       │ 54         │ 2011-06-24 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 8.91  │
│ 208       │ 4          │ 2011-06-29 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 15.86 │
│ 209       │ 18         │ 2011-07-07 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 0.99  │
│ 210       │ 19         │ 2011-07-20 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.98  │
│ 211       │ 21         │ 2011-07-20 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 1.98  │
│ 212       │ 23         │ 2011-07-21 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 3.96  │
│ 213       │ 27         │ 2011-07-22 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 5.94  │
│ 214       │ 33         │ 2011-07-25 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 8.91  │
│ 215       │ 42         │ 2011-07-30 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 13.86 │
│ 216       │ 56         │ 2011-08-07 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 0.99  │
│ 217       │ 57         │ 2011-08-20 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 1.98  │
│ 218       │ 59         │ 2011-08-20 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 1.98  │
│ 219       │ 2          │ 2011-08-21 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 3.96  │
│ 220       │ 6          │ 2011-08-22 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 5.94  │
│ 221       │ 12         │ 2011-08-25 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 8.91  │
│ 222       │ 21         │ 2011-08-30 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 13.86 │
│ 223       │ 35         │ 2011-09-07 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 0.99  │
│ 224       │ 36         │ 2011-09-20 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 1.98  │
│ 225       │ 38         │ 2011-09-20 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 1.98  │
│ 226       │ 40         │ 2011-09-21 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 3.96  │
│ 227       │ 44         │ 2011-09-22 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 5.94  │
│ 228       │ 50         │ 2011-09-25 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 8.91  │
│ 229       │ 59         │ 2011-09-30 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 13.86 │
│ 230       │ 14         │ 2011-10-08 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 0.99  │
│ 231       │ 15         │ 2011-10-21 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 1.98  │
│ 232       │ 17         │ 2011-10-21 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 1.98  │
│ 233       │ 19         │ 2011-10-22 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 3.96  │
│ 234       │ 23         │ 2011-10-23 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 5.94  │
│ 235       │ 29         │ 2011-10-26 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 8.91  │
│ 236       │ 38         │ 2011-10-31 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 13.86 │
│ 237       │ 52         │ 2011-11-08 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 0.99  │
│ 238       │ 53         │ 2011-11-21 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 1.98  │
│ 239       │ 55         │ 2011-11-21 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 1.98  │
│ 240       │ 57         │ 2011-11-22 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 3.96  │
│ 241       │ 2          │ 2011-11-23 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 5.94  │
│ 242       │ 8          │ 2011-11-26 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 8.91  │
│ 243       │ 17         │ 2011-12-01 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 13.86 │
│ 244       │ 31         │ 2011-12-09 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 0.99  │
│ 245       │ 32         │ 2011-12-22 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 1.98  │
│ 246       │ 34         │ 2011-12-22 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 1.98  │
│ 247       │ 36         │ 2011-12-23 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 3.96  │
│ 248       │ 40         │ 2011-12-24 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 5.94  │
│ 249       │ 46         │ 2011-12-27 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 8.91  │
│ 250       │ 55         │ 2012-01-01 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 13.86 │
│ 251       │ 10         │ 2012-01-09 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 0.99  │
│ 252       │ 11         │ 2012-01-22 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ 253       │ 13         │ 2012-01-22 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ 254       │ 15         │ 2012-01-23 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 3.96  │
│ 255       │ 19         │ 2012-01-24 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 5.94  │
│ 256       │ 25         │ 2012-01-27 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 8.91  │
│ 257       │ 34         │ 2012-02-01 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 13.86 │
│ 258       │ 48         │ 2012-02-09 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 0.99  │
│ 259       │ 49         │ 2012-02-22 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 1.98  │
│ 260       │ 51         │ 2012-02-22 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 1.98  │
│ 261       │ 53         │ 2012-02-23 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 3.96  │
│ 262       │ 57         │ 2012-02-24 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 5.94  │
│ 263       │ 4          │ 2012-02-27 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 8.91  │
│ 264       │ 13         │ 2012-03-03 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 13.86 │
│ 265       │ 27         │ 2012-03-11 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 0.99  │
│ 266       │ 28         │ 2012-03-24 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 1.98  │
│ 267       │ 30         │ 2012-03-24 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 1.98  │
│ 268       │ 32         │ 2012-03-25 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 3.96  │
│ 269       │ 36         │ 2012-03-26 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 5.94  │
│ 270       │ 42         │ 2012-03-29 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 8.91  │
│ 271       │ 51         │ 2012-04-03 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 13.86 │
│ 272       │ 6          │ 2012-04-11 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 0.99  │
│ 273       │ 7          │ 2012-04-24 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 1.98  │
│ 274       │ 9          │ 2012-04-24 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 1.98  │
│ 275       │ 11         │ 2012-04-25 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 3.96  │
│ 276       │ 15         │ 2012-04-26 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 5.94  │
│ 277       │ 21         │ 2012-04-29 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 8.91  │
│ 278       │ 30         │ 2012-05-04 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 13.86 │
│ 279       │ 44         │ 2012-05-12 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 0.99  │
│ 280       │ 45         │ 2012-05-25 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 1.98  │
│ 281       │ 47         │ 2012-05-25 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 1.98  │
│ 282       │ 49         │ 2012-05-26 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 3.96  │
│ 283       │ 53         │ 2012-05-27 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 5.94  │
│ 284       │ 59         │ 2012-05-30 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 8.91  │
│ 285       │ 9          │ 2012-06-04 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 13.86 │
│ 286       │ 23         │ 2012-06-12 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 0.99  │
│ 287       │ 24         │ 2012-06-25 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 1.98  │
│ 288       │ 26         │ 2012-06-25 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 1.98  │
│ 289       │ 28         │ 2012-06-26 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 3.96  │
│ 290       │ 32         │ 2012-06-27 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 5.94  │
│ 291       │ 38         │ 2012-06-30 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 8.91  │
│ 292       │ 47         │ 2012-07-05 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 13.86 │
│ 293       │ 2          │ 2012-07-13 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 0.99  │
│ 294       │ 3          │ 2012-07-26 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 1.98  │
│ 295       │ 5          │ 2012-07-26 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 1.98  │
│ 296       │ 7          │ 2012-07-27 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 3.96  │
│ 297       │ 11         │ 2012-07-28 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 5.94  │
│ 298       │ 17         │ 2012-07-31 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 10.91 │
│ 299       │ 26         │ 2012-08-05 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 23.86 │
│ 300       │ 40         │ 2012-08-13 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 0.99  │
│ 301       │ 41         │ 2012-08-26 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 1.98  │
│ 302       │ 43         │ 2012-08-26 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 1.98  │
│ 303       │ 45         │ 2012-08-27 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 3.96  │
│ 304       │ 49         │ 2012-08-28 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 5.94  │
│ 305       │ 55         │ 2012-08-31 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 8.91  │
│ 306       │ 5          │ 2012-09-05 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 16.86 │
│ 307       │ 19         │ 2012-09-13 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.99  │
│ 308       │ 20         │ 2012-09-26 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 3.98  │
│ 309       │ 22         │ 2012-09-26 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 3.98  │
│ 310       │ 24         │ 2012-09-27 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 7.96  │
│ 311       │ 28         │ 2012-09-28 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 11.94 │
│ 312       │ 34         │ 2012-10-01 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 10.91 │
│ 313       │ 43         │ 2012-10-06 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 16.86 │
│ 314       │ 57         │ 2012-10-14 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 0.99  │
│ 315       │ 58         │ 2012-10-27 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.98  │
│ 316       │ 1          │ 2012-10-27 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 1.98  │
│ 317       │ 3          │ 2012-10-28 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 3.96  │
│ 318       │ 7          │ 2012-10-29 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 5.94  │
│ 319       │ 13         │ 2012-11-01 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 8.91  │
│ 320       │ 22         │ 2012-11-06 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 13.86 │
│ 321       │ 36         │ 2012-11-14 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 0.99  │
│ 322       │ 37         │ 2012-11-27 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 1.98  │
│ 323       │ 39         │ 2012-11-27 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.98  │
│ 324       │ 41         │ 2012-11-28 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 3.96  │
│ 325       │ 45         │ 2012-11-29 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 5.94  │
│ 326       │ 51         │ 2012-12-02 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 8.91  │
│ 327       │ 1          │ 2012-12-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 13.86 │
│ 328       │ 15         │ 2012-12-15 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 0.99  │
│ 329       │ 16         │ 2012-12-28 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 1.98  │
│ 330       │ 18         │ 2012-12-28 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 1.98  │
│ 331       │ 20         │ 2012-12-29 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 3.96  │
│ 332       │ 24         │ 2012-12-30 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 5.94  │
│ 333       │ 30         │ 2013-01-02 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 8.91  │
│ 334       │ 39         │ 2013-01-07 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 13.86 │
│ 335       │ 53         │ 2013-01-15 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 0.99  │
│ 336       │ 54         │ 2013-01-28 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 1.98  │
│ 337       │ 56         │ 2013-01-28 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 1.98  │
│ 338       │ 58         │ 2013-01-29 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 3.96  │
│ 339       │ 3          │ 2013-01-30 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 5.94  │
│ 340       │ 9          │ 2013-02-02 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 8.91  │
│ 341       │ 18         │ 2013-02-07 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 13.86 │
│ 342       │ 32         │ 2013-02-15 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 0.99  │
│ 343       │ 33         │ 2013-02-28 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 1.98  │
│ 344       │ 35         │ 2013-02-28 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 1.98  │
│ 345       │ 37         │ 2013-03-01 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 3.96  │
│ 346       │ 41         │ 2013-03-02 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 5.94  │
│ 347       │ 47         │ 2013-03-05 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 8.91  │
│ 348       │ 56         │ 2013-03-10 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 13.86 │
│ 349       │ 11         │ 2013-03-18 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 0.99  │
│ 350       │ 12         │ 2013-03-31 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ 351       │ 14         │ 2013-03-31 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 1.98  │
│ 352       │ 16         │ 2013-04-01 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 3.96  │
│ 353       │ 20         │ 2013-04-02 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 5.94  │
│ 354       │ 26         │ 2013-04-05 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 8.91  │
│ 355       │ 35         │ 2013-04-10 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 13.86 │
│ 356       │ 49         │ 2013-04-18 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 0.99  │
│ 357       │ 50         │ 2013-05-01 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 1.98  │
│ 358       │ 52         │ 2013-05-01 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 1.98  │
│ 359       │ 54         │ 2013-05-02 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 3.96  │
│ 360       │ 58         │ 2013-05-03 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 5.94  │
│ 361       │ 5          │ 2013-05-06 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 8.91  │
│ 362       │ 14         │ 2013-05-11 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 13.86 │
│ 363       │ 28         │ 2013-05-19 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 0.99  │
│ 364       │ 29         │ 2013-06-01 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 1.98  │
│ 365       │ 31         │ 2013-06-01 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 1.98  │
│ 366       │ 33         │ 2013-06-02 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 3.96  │
│ 367       │ 37         │ 2013-06-03 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 5.94  │
│ 368       │ 43         │ 2013-06-06 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 8.91  │
│ 369       │ 52         │ 2013-06-11 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 13.86 │
│ 370       │ 7          │ 2013-06-19 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 0.99  │
│ 371       │ 8          │ 2013-07-02 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 1.98  │
│ 372       │ 10         │ 2013-07-02 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ 373       │ 12         │ 2013-07-03 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 3.96  │
│ 374       │ 16         │ 2013-07-04 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 5.94  │
│ 375       │ 22         │ 2013-07-07 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 8.91  │
│ 376       │ 31         │ 2013-07-12 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 13.86 │
│ 377       │ 45         │ 2013-07-20 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 0.99  │
│ 378       │ 46         │ 2013-08-02 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 1.98  │
│ 379       │ 48         │ 2013-08-02 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 1.98  │
│ 380       │ 50         │ 2013-08-03 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 3.96  │
│ 381       │ 54         │ 2013-08-04 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 5.94  │
│ 382       │ 1          │ 2013-08-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 8.91  │
│ 383       │ 10         │ 2013-08-12 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 13.86 │
│ 384       │ 24         │ 2013-08-20 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 0.99  │
│ 385       │ 25         │ 2013-09-02 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 1.98  │
│ 386       │ 27         │ 2013-09-02 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 1.98  │
│ 387       │ 29         │ 2013-09-03 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 3.96  │
│ 388       │ 33         │ 2013-09-04 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 5.94  │
│ 389       │ 39         │ 2013-09-07 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 8.91  │
│ 390       │ 48         │ 2013-09-12 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 13.86 │
│ 391       │ 3          │ 2013-09-20 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 0.99  │
│ 392       │ 4          │ 2013-10-03 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 1.98  │
│ 393       │ 6          │ 2013-10-03 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 1.98  │
│ 394       │ 8          │ 2013-10-04 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 3.96  │
│ 395       │ 12         │ 2013-10-05 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 5.94  │
│ 396       │ 18         │ 2013-10-08 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 8.91  │
│ 397       │ 27         │ 2013-10-13 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 13.86 │
│ 398       │ 41         │ 2013-10-21 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 0.99  │
│ 399       │ 42         │ 2013-11-03 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 1.98  │
│ 400       │ 44         │ 2013-11-03 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 1.98  │
│ 401       │ 46         │ 2013-11-04 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 3.96  │
│ 402       │ 50         │ 2013-11-05 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 5.94  │
│ 403       │ 56         │ 2013-11-08 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 8.91  │
│ 404       │ 6          │ 2013-11-13 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 25.86 │
│ 405       │ 20         │ 2013-11-21 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 0.99  │
│ 406       │ 21         │ 2013-12-04 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 1.98  │
│ 407       │ 23         │ 2013-12-04 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 1.98  │
│ 408       │ 25         │ 2013-12-05 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 3.96  │
│ 409       │ 29         │ 2013-12-06 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 5.94  │
│ 410       │ 35         │ 2013-12-09 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 8.91  │
│ 411       │ 44         │ 2013-12-14 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 13.86 │
│ 412       │ 58         │ 2013-12-22 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.99  │
└───────────┴────────────┴─────────────────────┴──────────────────────────────────────────┴─────────────────────┴──────────────┴────────────────┴───────────────────┴───────┘
**/
-- Proporciona una consulta que muestre las ventas totales realizadas por cada agente de ventas.


-- ¿Qué agente de ventas realizó más ventas en 2009?


-- Escribir una consulta que muestre todas las playlists de la base de datos.

Select * from playlists;
/**
┌────────────┬────────────────────────────┐
│ PlaylistId │            Name            │
├────────────┼────────────────────────────┤
│ 1          │ Music                      │
│ 2          │ Movies                     │
│ 3          │ TV Shows                   │
│ 4          │ Audiobooks                 │
│ 5          │ 90’s Music                 │
│ 6          │ Audiobooks                 │
│ 7          │ Movies                     │
│ 8          │ Music                      │
│ 9          │ Music Videos               │
│ 10         │ TV Shows                   │
│ 11         │ Brazilian Music            │
│ 12         │ Classical                  │
│ 13         │ Classical 101 - Deep Cuts  │
│ 14         │ Classical 101 - Next Steps │
│ 15         │ Classical 101 - The Basics │
│ 16         │ Grunge                     │
│ 17         │ Heavy Metal Classic        │
│ 18         │ On-The-Go 1                │
└────────────┴────────────────────────────┘
**/
-- Escribe una consulta que liste todas las canciones de una playlist.

-- Escribe una consulta que liste exclusivamente el nombre de las canciones de una playlist concreta, con el nombre de su género y el nombre de tipo de medio.