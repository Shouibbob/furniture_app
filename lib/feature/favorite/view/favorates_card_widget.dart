import 'package:flutter/material.dart';
import 'package:furniture_app/core/colors.dart';
import 'package:furniture_app/core/model/crads_model.dart';

class FavoratesCard extends StatelessWidget {
  const FavoratesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: Icon(
          Icons.search,
          color: AppColors.secondry,
          size: 30,
        ),
        centerTitle: true,
        title: Text(
          'Favorites',
          style:
              TextStyle(color: AppColors.secondry, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shop,
              color: AppColors.secondry,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 0),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      height: 110,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    cards[index].image ?? '',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cards[index].typeTable ?? '',
                                        style: TextStyle(
                                          color: AppColors.hover,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        cards[index].price ?? '',
                                        style: TextStyle(
                                          color: AppColors.secondry,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    IconButton(
                                      style: IconButton.styleFrom(
                                        backgroundColor: AppColors.IconCl,
                                      ),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.shopping_bag,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ]),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: cards.length),
            ),
          )
        ],
      ),
    );
  }
}