nomes = {}
idades = {}
cursos = {}
print("Insira o número de pessoas da sua bancada")
n_pessoas = io.read()

function insere_pessoa()
for i = 1, n_pessoas do
print("\nAdd pessoa " .. i .. ':')
print('\nNome:')
nomes[i] = insere_nome()
print('\nIdade:')
idades[i] = insere_idade()
print('\nCurso:')
cursos[i] = insere_curso()
print('------------------')
end
saida()
end

function insere_nome()
nome = io.read()
return nome
end

function insere_idade()
idade = io.read()
return idade
end

function insere_curso()
curso = io.read()
return curso
end

function saida()

for aux = 1, n_pessoas do
print('Nome:' .. nomes[aux] .. '\nIdade:' .. idades[aux] .. '\nCurso:' .. cursos[aux] .. '\n')
end
end

insere_pessoa()