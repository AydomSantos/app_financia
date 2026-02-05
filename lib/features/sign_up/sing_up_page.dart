import 'package:flutter/material.dart';
import '../../rotas/rotas.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  
  // Cores baseadas no design
  final Color primaryColor = const Color(0xFF438883);
  final Color secondaryColor = const Color(0xFF63B5AF);
  final Color backgroundColor = Colors.white; // Fundo da área de inputs é branco no design
  final Color scaffoldBg = const Color(0xFFEEF8F7);

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  // Helper para criar o estilo das bordas
  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: color, width: 1.5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              // Título
              Text(
                'Start Saving\nYour Money!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                  letterSpacing: -0.5,
                ),
              ),
              
              // Ilustração
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Image.asset(
                  'assets/images/SignUp_img.png',
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ),

              // Formulário
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      _buildTextField(label: "YOUR NAME", hint: "IRVAN MOSES"),
                      const SizedBox(height: 20),
                      _buildTextField(label: "YOUR EMAIL", hint: "moses@email.com"),
                      const SizedBox(height: 20),
                      _buildTextField(
                        label: "CHOOSE YOUR PASSWORD",
                        hint: "123456#Abcd",
                        obscure: true,
                        controller: _passwordController,
                        suffix: const Icon(Icons.visibility_off_outlined, color: Colors.grey),
                        helper: "Must have at least 8 characters, 1 capital letter and 1 number.",
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        label: "CONFIRM YOUR PASSWORD",
                        hint: "***********",
                        obscure: true,
                        suffix: const Icon(Icons.visibility_outlined, color: Colors.grey),
                        errorColor: Colors.red, // Para simular o erro do print
                      ),
                      
                      const SizedBox(height: 30),

                      // Botão Sign Up com Gradiente (como no print)
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [secondaryColor, primaryColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: primaryColor.withOpacity(0.3),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            )
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Rotas.login);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          ),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 20),
                      
                      // Link Login
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already Have Account? ", style: TextStyle(color: Colors.grey)),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Rotas.login);
                            },
                            child: Text("Sign In", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget customizado para os inputs conforme o design
  Widget _buildTextField({
    required String label,
    required String hint,
    bool obscure = false,
    TextEditingController? controller,
    Widget? suffix,
    String? helper,
    Color? errorColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 8),
          child: Text(
            label,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),
          ),
        ),
        TextFormField(
          controller: controller,
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: errorColor ?? primaryColor.withOpacity(0.6)),
            filled: true,
            fillColor: Colors.white,
            suffixIcon: suffix,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            enabledBorder: _buildBorder(errorColor ?? const Color(0xFFD0E5E4)),
            focusedBorder: _buildBorder(errorColor ?? primaryColor),
          ),
        ),
        if (helper != null)
          Padding(
            padding: const EdgeInsets.only(top: 6, left: 4),
            child: Text(helper, style: const TextStyle(fontSize: 10, color: Color(0xFF63B5AF))),
          ),
        if (errorColor != null)
           const Padding(
            padding: const EdgeInsets.only(top: 6, left: 4),
            child: Text("Passwords do not match. Please retype.", style: TextStyle(fontSize: 10, color: Colors.red)),
          ),
      ],
    );
  }
}