import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_bloc_feature/core/extension/size_on_context.dart';
import 'package:test_bloc_feature/features/Home/domain/entities/get_anime_response_entities.dart';

class AnimeGridItem extends StatelessWidget {
  const AnimeGridItem({
    super.key,
    required this.animeList,
  });

  final List<GetAnimeResponseEntities> animeList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 4,
            crossAxisCount: context.crossAxisCount),
        itemCount: animeList.length,
        itemBuilder: (context, index) {
          final anime = animeList[index];
          return Stack(
            alignment: Alignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: anime.posterImage ?? '',
                errorWidget: (context, url, error) => const Icon(Icons.error),
                progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                  value: progress.progress,
                )),
                imageBuilder: (context, imageProvider) => Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              PositionedDirectional(
                bottom: 16,
                child: Text(
                  anime.canonicalTitle ?? '',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        });
  }
}
