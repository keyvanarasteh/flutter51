import 'package:flutter/material.dart';
import 'package:flutter_app_bank/widgets/custom_text.dart';
import 'package:flutter_app_bank/widgets/single_row_menu.dart';
import 'package:flutter_app_bank/widgets/transaction_row.dart';
import 'package:intl/intl.dart';

import '../utils/balance_card.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/credit_card.dart';
import '../widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int selectItem = 0;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //kastım uygulama barı
              const CustomAppBar(
                userName: 'Merhaba, Yağız',
              ),
              // kredi kartı witget
              CreditCard(),

              //balance kart widget
              BalanceCard(),

              //Row Menu
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SingleRowMenu(
                      iconUrl: 'assets/icons/cash.svg',
                      text: 'Top Up',
                    ),
                    const SingleRowMenu(
                      iconUrl: 'assets/icons/upload.svg',
                      text: 'Transfert',
                    ),
                    const SingleRowMenu(
                      iconUrl: 'assets/icons/download.svg',
                      text: 'Withdraw',
                    ),
                    const SingleRowMenu(
                      iconUrl: 'assets/icons/more.svg',
                      text: 'More',
                    ),
                  ],
                ),
              ),

              //info line
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: 'Geçmiş İşlemler',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    const CustomText(
                      text: 'Hepsini gör',
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),

              //transaction date
              //im going to use the date of today with
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),
                child: CustomText(
                  text: DateFormat.yMMMEd('en_US').format(
                    DateTime.now(),
                  ),
                  fontSize: 16,
                ),
              ),

              //transaction row
              const TransactionRow(
                title: 'Top UP EPEP',
                description: 'through amanahmart',
                amount: 80.00,
                isPositif: true,
                key: null,
              ),
              const TransactionRow(
                title: 'Hepsiburada',
                description: 'Tp-c şarj kablosu',
                amount: 80.00,
                isPositif: false,
                key: null,
              ),
              const TransactionRow(
                title: 'Happy center',
                description: '700 gr dana kıyma',
                amount: 80.00,
                isPositif: false,
                key: null,
              ),
              const TransactionRow(
                title: 'Haşlık',
                description: 'İhtiyacın varmış :p',
                amount: 750.00,
                isPositif: true,
                key: null,
              ),
              const TransactionRow(
                title: 'Aylık Maaş',
                description: 'Mehmet Çakıroğlu A.Ş.',
                amount: 15000.00,
                isPositif: true,
                key: null,
              ),
              const TransactionRow(
                title: 'Bacanaklar Tekel',
                description: 'ıvır zıvır falan işte ...',
                amount: 1500.00,
                isPositif: false,
                key: null,
              ),
              const TransactionRow(
                title: 'Migros',
                description: 'Eski Kaşar,Kayseri 100 gr pastırma',
                amount: 80.00,
                isPositif: false,
                key: null,
              ),
              const TransactionRow(
                title: 'Apple',
                description: 'Aksesuar',
                amount: 4500.00,
                isPositif: false,
                key: null,
              ),
              const TransactionRow(
                title: 'Kira',
                description: 'Sunucu',
                amount: 430.00,
                isPositif: true,
                key: null,
              ),
              const TransactionRow(
                title: 'Ödeme',
                description: 'İsu Shop',
                amount: 600.00,
                isPositif: false,
                key: null,
              ),
              const TransactionRow(
                title: 'Bim',
                description: 'Paldo Prinç',
                amount: 150.00,
                isPositif: false,
                key: null,
              ),
              const TransactionRow(
                title: 'Mlp Care',
                description: 'İstinye Üniversitesi özür ödemesi :D',
                amount: 6700.00,
                isPositif: true,
                key: null,
              ),
              const TransactionRow(
                title: 'Sarallar Market',
                description: '5.56 3 kutu mermi',
                amount: 530.57,
                isPositif: false,
                key: null,
              ),
              const TransactionRow(
                title: 'Mecnun İlaç',
                description: 'Aferin kapsül',
                amount: 234.40,
                isPositif: false,
                key: null,
              ),
              const TransactionRow(
                title: 'Nissan',
                description: 'Nissan Syline GT-R R34 V-Spec 2',
                amount: 30000000.00,
                isPositif: false,
                key: null,
              ),
              //bottom bar
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
        selectedItem: selectItem,
      ),
    );
  }
}
