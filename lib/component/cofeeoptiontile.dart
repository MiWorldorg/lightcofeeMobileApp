import 'package:flutter/material.dart';
import 'package:lightcofee/models/cofee.dart';

class CofeeOptionTile extends StatelessWidget {
  final Cofee cofee;
  const CofeeOptionTile({super.key, required this.cofee});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 36, 12, 36),
      child: Container(
        padding: EdgeInsets.all(26),
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Theme.of(context).shadowColor)],
            border: Border.all(width: 1, color: Theme.of(context).shadowColor),
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).cardColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(cofee.imagePath, width: 230)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cofee.name,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                        )),
                Text(
                  cofee.shortDescription,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w200,
                        fontSize: 16,
                      ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          cofee.rating.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.onSurface,
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                              ),
                        ),
                        const Icon(Icons.heart_broken_sharp)
                      ],
                    ),
                    const Icon(Icons.add),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
