import 'package:app_notas_notifier/notes/note_model.dart';
import 'package:app_notas_notifier/notes/notes_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final notesProvider = StateNotifierProvider<NotesNotifier, List<NoteModel>>(
  (ref) => NotesNotifier(),
);

class NotesPage extends HookConsumerWidget {
  NotesPage({Key? key}) : super(key: key);

  final noteContoller = TextEditingController();
  final descriptionContoller = TextEditingController();
  final noteFocusNode = FocusNode();
  final descriptionFocusNode = FocusNode();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(notesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              focusNode: noteFocusNode,
              controller: noteContoller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Nova nota',
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                hintText: 'Escreva sua anotação...',
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.lime,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              focusNode: descriptionFocusNode,
              controller: descriptionContoller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Descrição',
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                hintText: 'Escreva a descrição da nota...',
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.lime,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                                side: const BorderSide(
                                  color: Colors.lime,
                                  width: 2,
                                ),
                              ),
                              content: Text(
                                notes[index].description ?? "Não há descrição.",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: ListTile(
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 3,
                            color: Colors.lime,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        title: Text(notes[index].title),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            ref
                                .read(notesProvider.notifier)
                                .removeNote(notes[index]);
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(notesProvider.notifier).addNote(
                NoteModel(
                    title: noteContoller.text,
                    description: descriptionContoller.text),
              );

          noteContoller.clear();
          noteFocusNode.unfocus();
          descriptionContoller.clear();
          descriptionFocusNode.unfocus();
        },
        child: const Icon(
          Icons.save,
          size: 35,
        ),
      ),
    );
  }
}
