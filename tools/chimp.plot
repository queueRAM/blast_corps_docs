set term png size 1024,1024
set output "chimp.png"
#set term dumb
set xrange [0x1072:0x00D2]
set yrange [0x041A:0x1B8A]
set title "Simian Acres"

set style line 1 lc rgb 'orange' lt 1 lw 2 pt 7 ps 1.5
set style line 2 lc rgb 'black'  lt 1 lw 2 pt 5 ps 1.5
set style line 3 lc rgb 'green'  lt 1 lw 2 pt 3 ps 1.5
set style line 4 lc rgb 'blue'  lt 1 lw 2 pt 3 ps 1.5

set object 1 rect from 0x00D2, 0x041A to 0x1072, 0x1B8A fc rgb "cyan" fs pattern 1 bo -1

set object 2 rect from 0x00D2, 0x041A to 0x1072, 0x1B8A fc rgb "red" fs pattern 4 bo -1
set object 3 rect from 0x07DA, 0x0ABE to 0x096A, 0x0B86 fc rgb "red" fs pattern 1 bo -1
set object 4 rect from 0x064A, 0x0ABE to 0x0776, 0x0C4E fc rgb "red" fs pattern 1 bo -1
set object 5 rect from 0x0456, 0x0ABE to 0x051E, 0x0BEA fc rgb "red" fs pattern 1 bo -1
set object 6 rect from 0x07DA, 0x0C4E to 0x083E, 0x0D16 fc rgb "red" fs pattern 1 bo -1
set object 7 rect from 0x064A, 0x0CB2 to 0x0712, 0x0E42 fc rgb "red" fs pattern 1 bo -1
set object 8 rect from 0x0712, 0x0DDE to 0x096A, 0x0EA6 fc rgb "red" fs pattern 1 bo -1
set object 9 rect from 0x0776, 0x0D16 to 0x083E, 0x0DDE fc rgb "red" fs pattern 1 bo -1
set object 10 rect from 0x07DA, 0x0C4E to 0x08A2, 0x0D16 fc rgb "red" fs pattern 1 bo -1
set object 11 rect from 0x05E6, 0x0EA6 to 0x06AE, 0x1036 fc rgb "red" fs pattern 1 bo -1
set object 12 rect from 0x051E, 0x1036 to 0x064A, 0x10FE fc rgb "red" fs pattern 1 bo -1
set object 13 rect from 0x0712, 0x0F6E to 0x08A2, 0x0FD2 fc rgb "red" fs pattern 1 bo -1
set object 14 rect from 0x096A, 0x0E42 to 0x0A32, 0x0F0A fc rgb "red" fs pattern 1 bo -1
set object 15 rect from 0x09CE, 0x0F6E to 0x0A96, 0x109A fc rgb "red" fs pattern 1 bo -1
set object 16 rect from 0x0906, 0x109A to 0x09CE, 0x1162 fc rgb "red" fs pattern 1 bo -1
set object 17 rect from 0x083E, 0x10FE to 0x0906, 0x122A fc rgb "red" fs pattern 1 bo -1
set object 18 rect from 0x0712, 0x1162 to 0x07DA, 0x12F2 fc rgb "red" fs pattern 1 bo -1
set object 19 rect from 0x08A2, 0x0F6E to 0x096A, 0x1036 fc rgb "red" fs pattern 1 bo -1
set object 20 rect from 0x0A32, 0x0DDE to 0x0AFA, 0x0EA6 fc rgb "red" fs pattern 1 bo -1
set object 21 rect from 0x0712, 0x109A to 0x083E, 0x10FE fc rgb "red" fs pattern 1 bo -1
set object 22 rect from 0x0712, 0x0FD2 to 0x0776, 0x109A fc rgb "red" fs pattern 1 bo -1
set object 23 rect from 0x09CE, 0x0CB2 to 0x0A96, 0x0DDE fc rgb "red" fs pattern 1 bo -1
set object 24 rect from 0x0C8A, 0x041A to 0x1072, 0x1B8A fc rgb "yellow" fs pattern 2 bo -1
set object 25 rect from 0x0AFA, 0x041A to 0x0C8A, 0x0C4E fc rgb "yellow" fs pattern 2 bo -1


# RDUs: offsets 0x34-0x38: 01B6B4-01B90C
# TNTs: offsets 0x38-0x3C: 01B90C-01B924
# to read from chimp.raw: skip=0x01B6B4 
plot 'chimp.raw.34rdus.bin' binary endian=big format="%int16%int16%int16" using 1:3 with points ls 1 title "RDUs", \
     'chimp.raw.38tnts.bin' binary endian=big format="%int16%int16%int16%int16%int16%int16" using 1:3 with points ls 2 title "TNT"

