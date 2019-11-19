t1 = {} -- Tabela contendo nomes
t2 = {} -- Tabela contendo matrículas
t3 = {} -- tabela contendo cursos

print("Entre com o número total de alunos: ")
total = io.read()
print('\n')

for aluno = 1, total do
print("Entre com o nome do aluno " .. aluno .. ": ")
t1[aluno] = io.read()
print("\nEntre com a matrícula do aluno " .. aluno .. ": ")
t2[aluno] = io.read()
print("\nEntre com o curso do aluno " .. aluno .. ": ")
t3[aluno] = io.read()
print('-------------------\n')
end

function consultar () -- função para escolha de operação
print("Digite 'Nome' para consultar por nome\n" .. "Digite 'Matrícula' para consultar por matrícula\n" .. "Digite 'Curso' para consultar por curso")
op = io.read()
return op;
end

function busca() -- função para busca do aluno
op = consultar()
if(op == 'Nome') then
print("\nDigite o nome:")
nome_consulta = io.read()
for aux = 1, total do
if t1[aux] == nome_consulta then
print("\nNome: " .. t1[aux] .. "\n" .. "Matrícula: " .. t2[aux] .. "\n" .. "Curso: " .. t3[aux] .. "\n" )
else print("Nome não encontrado")
end -- do if de nomes
end -- do for de nomes 

elseif(op == 'Matrícula') then
print('Digite a matrícula associada:')
matricula_consulta = io.read()
for aux = 1, total do
if t2[aux] == matricula_consulta then
print("\nNome: " .. t1[aux] .. "\n" .. "Matrícula: " .. t2[aux] .. "\n" .. "Curso: " .. t3[aux] .. "\n" )
else print("Matrícula não encontrada")
end
end

elseif(op == 'Curso') then
print('Digite o curso do aluno:')
curso_consulta = io.read()
for aux = 1, total do
if t3[aux] == curso_consulta then
print("\nNome: " .. t1[aux] .. "\n" .. "Matrícula: " .. t2[aux] .. "\n" .. "Curso: " .. t3[aux] .. "\n" )
else print("Matrícula não encontrada")
end
end

end -- do primeiro if
end -- da funcao

busca()


