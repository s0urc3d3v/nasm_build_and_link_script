if [$1 == '-h']
  then
    echo './assemble_and_link.sh [32/64][file_name_with_no_extention] [output_filename]'
fi

if [$1 == '32']
  then
    nasm -f elf $2.asm
    ld -m elf_i386 -s -o $3 $2.o
    echo 'Done'
fi

if [$1 == '64']
  then
    nasm -f elf64 $2.asm
    ld -m64 -o $3 $2.o
fi
