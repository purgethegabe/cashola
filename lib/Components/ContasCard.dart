import 'package:cashola/themes/main_text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountsCard extends StatelessWidget {
  const AccountsCard({super.key});

  @override
  Widget build(BuildContext context) {
    //card principal, de contas
    return Card(
      elevation: 13,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.fromLTRB(16, 8, 16, 12),
      //coluna que contem itens como titulo, cards de cartoes, simbolo de + e afins
      child: Column(
        children: [
          //row contendo Contas e o simbolo de mais
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Contas",
                  style: MainTextTheme.titleText(context),
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Icon(CupertinoIcons.plus),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Icon(CupertinoIcons.info_circle)),
                ],
              ),
            ],
          ),
          //row com os dois cards de cartão
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //primeiro card de cartao, roxo do nu
              Card(
                elevation: 13,
                shadowColor: Colors.transparent,
                color: const Color.fromRGBO(109, 0, 198, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                //margin da box roxa em relação a box de contas branca
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: Padding(
                  //padding do texto saldo para com a caixa roxa
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Padding(
                            //espaçamento entre o a foto Nu e o texto Nubank
                            padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                            child: Image(
                              image:
                                  AssetImage('assets/Accounticons/nuicon.png'),
                            ),
                          ),
                          Padding(
                            //espaçamento do nu e foto pro canto. Só fica centro e só soube mexer dessa forma
                            padding: const EdgeInsets.fromLTRB(0, 5, 50, 0),
                            child: Text(
                              "Nubank",
                              style: MainTextTheme.accountandcardsText(context),
                            ),
                          ),
                        ],
                      ),
                      //código tá cheio de sizedbox porque o stackoverflow recomendou
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Saldo",
                              style: MainTextTheme.accountandcardsText(context),
                            ),
                            //separando o saldo de 420 porque nenhum alignment deu certo e não queria dar mais um wrap
                            const SizedBox(width: 55),
                            Text(
                              "R\$420",
                              style:
                                  MainTextTheme.accountandcardsNumber(context),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Previsto",
                            style:
                                MainTextTheme.miniaccountandcardsText(context),
                          ),
                          SizedBox(width: 65),
                          Text(
                            "R\$420",
                            style: MainTextTheme.miniaccountandcardsNumber(
                                context),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 13,
                shadowColor: Colors.transparent,
                color: const Color.fromRGBO(5, 53, 125, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                //margin da box roxa em relação a box de contas branca
                margin: const EdgeInsets.fromLTRB(0, 0, 15, 12),
                child: Padding(
                  //padding do texto saldo para com a caixa roxa
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 15),
                  child: Column(children: [
                    Row(
                      children: [
                        const Padding(
                          //espaçamento entre o a foto Nu e o texto Itau
                          padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                          child: Image(
                            image:
                                AssetImage('assets/Accounticons/itauicon.png'),
                          ),
                        ),
                        Padding(
                          //espaçamento do nu e foto pro canto. Só fica centro e só soube mexer dessa forma
                          //essas medidas aqui tão mto aleatórias, tem que ver isso dai
                          padding: const EdgeInsets.fromLTRB(0, 5, 70, 2),
                          child: Text(
                            "Itaú",
                            style: MainTextTheme.accountandcardsText(context),
                          ),
                        ),
                      ],
                    ),
                    //código tá cheio de sizedbox porque o stackoverflow recomendou
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Saldo",
                            style: MainTextTheme.accountandcardsText(context),
                          ),
                          //separando o saldo de 420 porque nenhum alignment deu certo e não queria dar mais um wrap
                          const SizedBox(width: 55),
                          Text(
                            "R\$420",
                            style: MainTextTheme.accountandcardsNumber(context),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Previsto",
                          style: MainTextTheme.miniaccountandcardsText(context),
                        ),
                        SizedBox(width: 65),
                        Text(
                          "R\$420",
                          style:
                              MainTextTheme.miniaccountandcardsNumber(context),
                        )
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(17, 0, 17, 12),
            child: Divider(
              thickness: 1,
            ),
          ),
          Row(
            children: [
              Text(
                "Saldo Total",
                style: MainTextTheme.titleText(context),
              ),
              // sum of saldo of all contas except poupança onesimage.png
              Text("cansei kkk depois volto")
            ],
          )
        ],
      ),
    );
  }
}
