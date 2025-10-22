# Задание 1. Отчет

## 1. Сигнатуры форматов
| Формат | Сигнатура  | Источники |
|------------|------------|------------|
| RAR | 52 61 72 20 1A 07 01 00 | Из документации: https://www.rarlab.com/technote.htm#arcstruct  |
| ZIP  | 50 4B 03 04 |  |
| ZIP (пустой) | 50 4B 05 06 |  |
| ZIP (расширенный) | 50 4B 07 08 |  |
| JPEG  |  |  |
| MP3  | 49 44 33 | Из документации: https://id3.org/id3v2.4.0-structure  |


## 2. Запуск Yara
Правила для поиска форматов файлов лежат в файле **file_formats.yara**

### RAR

<img width="1077" height="143" alt="rar_1" src="https://github.com/user-attachments/assets/60d91de6-49b1-4a95-8380-912ac76601e0" />


