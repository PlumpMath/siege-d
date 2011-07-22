dmd -gc -debug -m64 -lib -oflibsieged.a siege/c/ai/*.d siege/c/audio/*.d siege/c/*.d siege/c/core/*.d siege/c/graphics/*.d siege/c/input/*.d siege/c/physics/*.d siege/c/util/*.d siege/*.d siege/audio/*.d siege/core/*.d siege/graphics/*.d siege/input/*.d siege/util/*.d siege/physics/*.d siege/ai/*.d
dmd -gc -debug -m64 turtle.d libsieged.a ../../../build/lib/*.a -L-ldl
dmd -gc -debug -m64 draw.d libsieged.a ../../../build/lib/*.a -L-ldl
dmd -gc -debug -m64 astar.d libsieged.a ../../../build/lib/*.a -L-ldl
dmd -gc -debug -m64 physics.d libsieged.a ../../../build/lib/*.a -L-ldl

