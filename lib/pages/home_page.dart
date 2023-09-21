import 'package:firebase_with_bloc/pages/messaging_page.dart';
import 'package:firebase_with_bloc/pages/sign_in_page.dart';
import 'package:firebase_with_bloc/services/database_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth/auth_bloc.dart';
import '../models/post_model.dart';
import '../services/strings.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> list = [];

  void getAllData() async {
    list = await DBService.readAllPost();
    print(list);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getAllData();
  }

  void showWarningDialog(BuildContext ctx) {
    final controller = TextEditingController();
    showDialog(
      context: ctx,
      builder: (context) {
        return BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is DeleteAccountSuccess) {
              Navigator.of(context).pop();
              if (ctx.mounted) {
                Navigator.of(ctx).pushReplacement(
                    MaterialPageRoute(builder: (context) => SignInPage()));
              }
            }

            if (state is AuthFailure) {
              Navigator.of(context).pop();
              Navigator.of(ctx).pop();
            }
          },
          builder: (context, state) {
            return Stack(
              children: [
                AlertDialog(
                  title: const Text(I18N.deleteAccount),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(state is DeleteConfirmSuccess
                          ? I18N.requestPassword
                          : I18N.deleteAccountWarning),
                      const SizedBox(
                        height: 10,
                      ),
                      if (state is DeleteConfirmSuccess)
                        TextField(
                          controller: controller,
                          decoration:
                              const InputDecoration(hintText: I18N.password),
                        ),
                    ],
                  ),
                  actionsAlignment: MainAxisAlignment.spaceBetween,
                  actions: [
                    /// #cancel
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(I18N.cancel),
                    ),

                    /// #confirm #delete
                    ElevatedButton(
                      onPressed: () {
                        if (state is DeleteConfirmSuccess) {
                          context
                              .read<AuthBloc>()
                              .add(DeleteAccountEvent(controller.text.trim()));
                        } else {
                          context
                              .read<AuthBloc>()
                              .add(const DeleteConfirmEvent());
                        }
                      },
                      child: Text(state is DeleteConfirmSuccess
                          ? I18N.delete
                          : I18N.confirm),
                    ),
                  ],
                ),
                if (state is AuthLoading)
                  const Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      onDrawerChanged: (value) {
        if (value) {
          context.read<AuthBloc>().add(const GetUserEvent());
        }
      },
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MessagingPage(),
                ),
              );
            },
            icon: const Icon(Icons.messenger),
          ),
          IconButton(
            onPressed: () {
              context.read<AuthBloc>().add(const SignOutEvent());
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                final String name = state is GetUserSuccess
                    ? state.user.displayName!
                    : "accountName";
                final String email =
                    state is GetUserSuccess ? state.user.email! : "accountName";

                return UserAccountsDrawerHeader(
                  accountName: Text(name),
                  accountEmail: Text(email),
                );
              },
            ),
            ListTile(
              onTap: () => showWarningDialog(context),
              title: const Text(I18N.deleteAccount),
            ),
          ],
        ),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          }

          if (state is DeleteAccountSuccess && context.mounted) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          }

          if (state is SignOutSuccess) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SignInPage()));
          }
        },
        child: Center(
          child: Column(
            children: [
              for (int i = 0; i < list.length; i++)
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ),
          );
        },
        child: const Icon(Icons.create_outlined),
      ),
    );
  }
}
