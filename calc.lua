function ENTRADA()
    print()
    io.write("Entre o 1o. valor: ") A = io.read("*number")
    io.write("Entre o 2o. valor: ") B = io.read("*number")
end

function SAIDA()
    io.write("\027[H\027[2J")  -- Clearing the screen
    print("\nO resultado da operação " .. A .. o .. B .. " = " .. R)
end

function CALCULO(X, Y, OPERATOR)
    if (OPERATOR == "+") then o = "+" return X + Y end
    if (OPERATOR == "-") then o = "-" return X - Y end
    if (OPERATOR == "*") then o = "*" return X * Y end
    if (OPERATOR == "/") then o = "/" return X / Y end
end

function ROTCALC(OPERATION)
    print()
    if (OPERATION == "+") then print("Rotina de Adicao detectada.") end
    if (OPERATION == "-") then print("Rotina de Subtracao detectada.")  end 
    if (OPERATION == "*") then print("Rotina de Multiplicacao detectada.") end
    if (OPERATION == "/") then print("Rotina de Divisao detectada.") end

    ENTRADA()

    if (OPERATION == "/" and B == 0) then
        print("\n Tentativa de divisao por 0 -> ERRO!")
    end

    R = CALCULO(A, B, OPERATION)
    SAIDA()
end

-- Trecho principal do programa

while (OPCAO ~= 5) do
    print()
    print("1 - Adicao")
    print("2 - Subtracao")
    print("3 - Multiplicacao")
    print("4 - Divisao")
    print("5 - Fim de Programa")

    io.write("\nEscolha uma opcao: ")  -- Evita de pular uma linha (como o print() faz)
    OPCAO = io.read("*number")

    if (OPCAO < 5 and OPCAO > 0) then 
        if (OPCAO == 1) then ROTCALC("+") end
        if (OPCAO == 2) then ROTCALC("-") end
        if (OPCAO == 3) then ROTCALC("*") end
        if (OPCAO == 4) then ROTCALC("/") end

  else
     if (OPCAO ~= 5) then
        io.write("\027[H\027[2J")  -- Clearing the screen
        print("\nOpcao invalida - Tente novamente\n")
     else
        print("Saindo...")
       end
    end
end