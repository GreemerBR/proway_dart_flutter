// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  FocusNode focusEmail = FocusNode();
  FocusNode focusIdade = FocusNode();
  FocusNode focusCidade = FocusNode();
  FocusNode focusEstado = FocusNode();

  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registre-se'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: keyForm,
          child: Column(
            children: [
              TextField(
                autofocus: true,
                decoration: const InputDecoration(hintText: 'Nome'),
                onSubmitted: (value) => focusEmail.requestFocus(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => focusEmail.requestFocus(),
                child: const Text('#Focar'),
              ),
              TextField(
                focusNode: focusEmail,
                decoration: const InputDecoration(hintText: 'Email'),
                onSubmitted: (value) => focusIdade.requestFocus(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => focusIdade.requestFocus(),
                child: const Text('#Focar'),
              ),
              TextField(
                focusNode: focusIdade,
                decoration: const InputDecoration(hintText: 'Idade'),
                onSubmitted: (value) => focusCidade.requestFocus(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => focusCidade.requestFocus(),
                child: const Text('#Focus'),
              ),
              TextField(
                focusNode: focusCidade,
                decoration: const InputDecoration(hintText: 'Cidade'),
                onSubmitted: (value) => focusEstado.requestFocus(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => focusEstado.requestFocus(),
                child: const Text('#Focus'),
              ),
              TextFormField(
                focusNode: focusEstado,
                decoration: const InputDecoration(hintText: 'Estado'),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'O campo está vazio.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (keyForm.currentState!.validate()) {
                    print('Ta validado!');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Você precisa preencher os dados corretamente'),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Registrar',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
