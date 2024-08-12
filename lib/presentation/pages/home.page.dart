import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/presentation/widgets/card_group.dart';
import 'package:pokedex/presentation/state/home/home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = MyHomeController();

  @override
  void initState() {
    controller.getPokemon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Pokedex'),
        actions: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 45,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                      controller.setSearch(value);
                      controller.searchPokemon(value);
                    }),
                  ),
                  Observer(builder: (context) {
                    if (controller.hasSearch) {
                      return InkWell(
                        onTap: () {
                          controller.setSearch('');
                          controller.resetPokemon();
                          controller.setHasSearch(false);
                          FocusScope.of(context).unfocus();
                        },
                        child: const Icon(Icons.close),
                      );
                    }

                    return const Icon(Icons.search);
                  }),
                ],
              )),
        ],
      ),
      body: Observer(builder: (context) {
        if (controller.isLoading) {
          return Center(
            child: SizedBox(
              height: 80,
              width: 80,
              child: Lottie.asset('assets/animations/loading.json'),
            ),
          );
        }

        if (controller.hasError) {
          return const Center(
            child: Text('Deu erro'),
          );
        }

        return hasPokemonList;
      }),
    );
  }

  Widget get hasPokemonList {
    if (controller.length > 0) {
      return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: controller.length,
        itemBuilder: (context, index) {
          return CardGroup(
            name: controller.name(index),
            image: controller.image(index),
            color: controller.colorPokemon(index),
            onTap: () => didTap(controller.pokemon(index)),
          );
        },
      );
    }
    return const Center(child: Text('Lista vazia'));
  }

  void didTap(Pokemon pokemon) {
    controller.pokemonNextScreen(pokemon);
    Navigator.pushNamed(context, '/detail');
  }
}
