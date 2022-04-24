# Belajar Data Wrangling in Shell

Source:[Pacmann](https://discourse.pacmann.ai/t/qna-pertemuan-16-shell-ii/3312/8)

Berikut adalah langkah-langkahnya:

1. Tambahkan download dataset dengan wget

    $ wget https://raw.githubusercontent.com/FaizalAddi/ShellClass/main/log

2. Convert file `US_births_1994-2014_astrology.xlsx` ke .csv

    $ in2csv US_births_1994-2014_astrology.xlsx > US_births_1994-2014_astrology.csv

3. Delete `astronony` column

    $ csvcut -c 1-5 US_births_1994-2014_astrology.csv > US_births_1994-2014.csv
