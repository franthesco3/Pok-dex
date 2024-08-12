import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/presentation/widgets/tag_type.dart';
import 'package:pokedex/presentation/state/details/detail_controller.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final controler = MyDetailController();

  @override
  void initState() {
    super.initState();
  }

  List<Widget> get types {
    if (controler.lengthTypes > 1) {
      return [
        TagType(type: controler.typePokemon(0), color: controler.colorType(0)),
        const SizedBox(width: 10),
        TagType(type: controler.typePokemon(1), color: controler.colorType(1)),
      ];
    }

    return [
      TagType(type: controler.typePokemon(0), color: controler.colorType(0))
    ];
  }

  Widget textSelect(int index, String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: index == controler.index ? controler.colorType(0) : Colors.black,
      ),
    );
  }

  Widget lineAboutPokemon(String title, String subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: controler.colorType(0),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(350),
        child: Container(
          height: 350,
          color: controler.colorType(0).withOpacity(0.7),
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    const Icon(Icons.favorite)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controler.name,
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: types,
                        )
                      ],
                    ),
                    Text(
                      controler.id,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: SvgPicture.network(controler.image)),
                    const SizedBox(width: 10),
                    const SizedBox(width: 10)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Observer(builder: (_) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () => controler.setIndex(0),
                      child: textSelect(0, 'About'),
                    ),
                  ],
                ),
              ),
              lineAboutPokemon('id', controler.id),
              lineAboutPokemon('name', controler.name),
              lineAboutPokemon('weght', controler.wight),
              lineAboutPokemon('height', controler.height),
            ],
          ),
        );
      }),
    );
  }
}
