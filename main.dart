import 'package:academia/poslogin.dart';
import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Academia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TelaDeLogin(),
    );
  }
}

class TelaDeLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Usamos um Container para adicionar uma imagem de fundo
    return Scaffold(
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          // Adiciona a imagem de fundo e a estica para cobrir toda a tela
          image: DecorationImage(
              image: AssetImage('assets/pagina1.png'), fit: BoxFit.cover),
        ),
        // Adiciona uma sombra escura para garantir a legibilidade do texto sobre a imagem
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(
                  16.0), // Adiciona um padding em todos os lados
              child: SingleChildScrollView(
                // Permite que o login role se o conteúdo for maior que a tela
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height / 3),
                    // Espaço no início, que pode ser ajustado para a posição do formulário
                    Image.asset('assets/logo.png', height: 300),
                    SizedBox(
                        height:
                            50), // Adiciona espaço entre a logo e o formulário de login
                    TextField(
                      // Campo para o usuário inserir o nome
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Nome de usuário',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Espaço entre os campos de texto
                    TextField(
                      // Campo para a senha
                      obscureText: true, // Esconde a senha
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(
                        height:
                            20), // Espaço entre o campo de senha e o botão de login
                    ElevatedButton(
                      // Botão para realizar o login
                      onPressed: () {
                        // Navegue para a página de perfil quando o botão for pressionado
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditarPerfilPage()),
                        );
                      },
                      child: Text('Ver Perfil'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity,
                            50), // Torna o botão mais largo e alto
                      ),
                    ),
                    SizedBox(height: 20), // Espaço após o botão de login
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
