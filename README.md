# P4F Projeto Web

### Ferramentas:

- Ruby
- Capybara 
- Cucumber
- SitePrism
- ChromeDriver
- GeckoDriver

### Estrutura do projeto:

#### Features
##### Actions: 
Mapeamento de ações padrão (click, fill, scroll, validations e etc).
##### Pages: 
Mapeamento das screens/telas e implementação das ações consumidas das Actions.
##### Specs_definitions: 
Funcionalidade/Cenários escritos na linguagem guerkin utilizando a técnica do BDD.
##### Steps_definitions:
Etapas da automação, cenários com as ações implementadas.
##### Support:
Configurações, parâmetros, estância de classes e Gemas.

#### Fixtures
Gestão de todo o consumo de massas de testes.

#### Reports
##### HTML:
Report em HTML.
##### JSON:
Report em JSON.
##### Screenshot:
Evidências em Screenshot organizados por Falha/Sucesso, Data/Hora e Browser (Chrome/Firefox).

#### Parâmetros obrigatórios para execução

> browser => **chrome** or **firefox** - Browser escolhido para execução dos testes.

> headless => **on** or **off** - Execução dos testes utilizando ou não interface gráfica.

#### Exemplo:

```sh
$ cucumber browser=chrome headless=off -t @cenario
```
