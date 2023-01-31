import 'package:brasil_fields/brasil_fields.dart';
import 'package:consulta_cep_app/modules/cep/domain/services/cep_service.dart';
import 'package:consulta_cep_app/modules/cep/infra/cep_repository_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../domain/models/cep.dart';
class SearchForm extends StatefulWidget {
  const SearchForm({super.key});

  @override
  SearchFormState createState() {
    return SearchFormState();
  }
}

class SearchFormState extends State<SearchForm> {
  final _formKey = GlobalKey<FormState>();
  final cepService = CepService(cepRepository: CepRepositoryApi());
  final inputCepController = TextEditingController();
  bool _loading = false;
  String? _result;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    inputCepController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: inputCepController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Cep',
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CepInputFormatter(),
                  ],
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo não pode estar vazio para consulta.';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: _loading
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _buscarCep();
                            }
                          },
                          child: const Text('Consultar'),
                        ),
                ),
               _result == null ? Container() : _buildResultForm(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future _buscarCep() async {
    _procurandoCep(true);
    final cep = inputCepController.text;
    final cepEncontrado = await cepService.buscar(cep);

    setState(() {
      _result = cepEncontrado.toJson();
    });

    _procurandoCep(false);
  }

  void _procurandoCep(bool enable) {
    setState(() {
      _result = _result;
      _loading = enable;
    });
  }

  Widget _buildResultForm() {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: InkWell(
            child: Text(_result.toString()),
            
          ),
        ),
      ),
    );
  }
}
