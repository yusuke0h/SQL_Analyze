SQL_Analyze
===========

# Usage
    $ ruby sql_analyze.rb
    ===RAW SQL===
    SELECT ocn.Table1.field11, ocn.Table1.field12, ocn.Table1.field13, ocn.Table2.field21, ocn.Table2.field22, ocn.Table2.field23, ocn.Table2.field24, ocn.Table2.field25
    FROM ocn.Table1, ocn.Table2
    WHERE ocn.Table1.field11 between 'xxx' AND 'yyy'
    AND ocn.Table1.field13 = 'zzz'
    AND ocn.Table2.field22 LIKE 'tt%'

    ===SELECT fields===
    ocn.Table1.field11
    ocn.Table1.field12
    ocn.Table1.field13
    ocn.Table2.field21
    ocn.Table2.field22
    ocn.Table2.field23
    ocn.Table2.field24
    ocn.Table2.field25

    ===FROM tables===
    ocn.Table1
    ocn.Table2

    ===WHERE terms===
    ocn.Table1.field11 between 'xxx' AND 'yyy'
    ocn.Table1.field13 = 'zzz'
    ocn.Table2.field22 LIKE 'tt%'
