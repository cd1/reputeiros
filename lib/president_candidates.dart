import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'candidate.dart';

class PresidentCandidatesGrid extends StatelessWidget {
  final _candidates = [
    Candidate('Ciro Gomes', 'PDT',
        'https://www.focus.jor.br/wp-content/uploads/2020/07/jornal-da-morada-entrevista-ciro-gomes-qUUd-768x432.jpg'),
    Candidate('Fernando Haddad', 'PT', 'https://anped.org.br/sites/default/files/images/haddad_sp.gif'),
    Candidate(
        'Henrique Mandetta', 'DEM', 'https://pbs.twimg.com/profile_images/1083810147351347200/r0lqoi5t_400x400.jpg'),
    Candidate('Jair Bolsonaro', 'Sem partido',
        'https://jornaltimoneiro.com.br/wp-content/uploads/2020/03/jair-bolsonaro-2.jpg'),
    Candidate('João Doria', 'PSDB', 'https://forbes.com.br/wp-content/uploads/2017/03/Joao-Doria_Lailson-Santos.jpg'),
    Candidate(
        'Luciano Huck', 'Sem partido', 'https://pbs.twimg.com/profile_images/1056205859536158720/fw2ytANd_400x400.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(16),
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 0.75,
      children: _candidates.map((c) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: c.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                c.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              c.party,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        );
      }).toList(),
    );
  }
}
