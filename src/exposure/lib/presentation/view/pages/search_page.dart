import 'package:exposure/injection.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/view/widgets/search_bar.dart';
import 'package:exposure/presentation/view/widgets/search_list.dart';
import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:exposure/presentation/viewmodel/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: CustomColor.mainText),
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height / 10,
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<SearchBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchBloc>(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 1, 20, 0),
        child: Column(
          children: [
            const SearchBar(),
            SizedBox(height: MediaQuery.of(context).size.height / 18.5),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return state.map(
                  initial: (state) => Container(),
                  notFound: (state) => const SecondaryText(
                      title:
                          "Não encontramos essa localização. Por favor, tente utilizar um nome mais descritivo.",
                      size: 17,
                      center: true),
                  loading: (state) =>
                      const Center(child: CircularProgressIndicator()),
                  loadFailure: (state) => const SecondaryText(
                      title:
                          "Ocorreu um erro durante o carregamento da pesquisa. Verifique sua conexão com a internet.",
                      size: 17,
                      center: true),
                  loaded: (state) => SearchList(list: state.items),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
