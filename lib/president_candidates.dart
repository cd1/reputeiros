import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reputeiros/generated/l10n.dart';
import 'package:reputeiros/insets.dart';
import 'package:reputeiros/news_item.dart';
import 'package:reputeiros/repository.dart';
import 'package:reputeiros/styles.dart';
import 'package:url_launcher/url_launcher.dart';

import 'candidate.dart';

final percentFormat = NumberFormat.percentPattern();

class CandidatesGridPage extends StatelessWidget {
  final List<Candidate> candidates;
  final ValueChanged<Candidate> onCandidateChanged;

  const CandidatesGridPage({
    required this.candidates,
    required this.onCandidateChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).candidatesGridTitle),
      ),
      body: _CandidatesGrid(
        candidates: candidates,
        onCandidateChanged: onCandidateChanged,
      ),
    );
  }
}

class _CandidatesGrid extends StatelessWidget {
  final List<Candidate> candidates;
  final ValueChanged<Candidate> onCandidateChanged;

  const _CandidatesGrid({
    required this.candidates,
    required this.onCandidateChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(Insets.largeMargin),
      crossAxisCount: 2,
      mainAxisSpacing: Insets.gridSpacing,
      crossAxisSpacing: Insets.gridSpacing,
      childAspectRatio: 0.75,
      children: candidates.map((c) {
        return InkWell(
          onTap: () {
            onCandidateChanged(c);
          },
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(Insets.smallMargin),
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
                padding: EdgeInsets.only(top: Insets.smallMargin),
                child: Text(
                  c.name,
                  style: Styles.candidateNameTextStyle,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                c.party,
                style: Styles.candidatePartyTextStyle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class CandidateNewsListPage extends StatelessWidget {
  final Candidate _candidate;

  const CandidateNewsListPage(this._candidate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_candidate.name),
      ),
      body: _CandidateNewsList(_candidate),
    );
  }
}

class _CandidateNewsList extends StatelessWidget {
  final Candidate _candidate;
  final List<NewsItem> _newsItems;

  _CandidateNewsList(this._candidate) : _newsItems = Repository().getNewsByCandidate(_candidate.id);

  @override
  Widget build(BuildContext context) {
    if (_newsItems.isNotEmpty) {
      return ListView.builder(
        itemCount: _newsItems.length + 1, // +1 because of the info
        itemBuilder: (context, index) {
          if (index == 0) {
            return _CandidateInfo(_candidate);
          } else {
            return _CandidateNewsItem(_newsItems[index - 1]);
          }
        },
      );
    } else {
      return Column(
        children: [
          _CandidateInfo(_candidate),
          Expanded(
            child: Center(
              child: Text(S.of(context).noCandidateNewsMessage),
            ),
          ),
        ],
      );
    }
  }
}

class _CandidateInfo extends StatelessWidget {
  final Candidate _candidate;

  const _CandidateInfo(this._candidate);

  @override
  Widget build(BuildContext context) {
    final approvalValueStr = (_candidate.approvalLevel != null)
        ? percentFormat.format(_candidate.approvalLevel)
        : S.of(context).noApprovalLevelValue;

    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(Insets.largeMargin),
          child: SizedBox.fromSize(
            size: Size.square(Insets.newsCandidateImageSize),
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: _candidate.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: Insets.smallMargin),
              child: Text(
                _candidate.name,
                style: Styles.candidateNameTextStyle,
              ),
            ),
            Text(S.of(context).candidatePartyInfo(_candidate.party)),
            Text(S.of(context).candidateApprovalLevelInfo(approvalValueStr)),
          ],
        )
      ],
    );
  }
}

void _openUrl(BuildContext context, String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(S.of(context).openNewsUrlError),
      ),
    );
  }
}

class _CandidateNewsItem extends StatelessWidget {
  final NewsItem _newsItem;

  const _CandidateNewsItem(this._newsItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              _openUrl(context, _newsItem.url);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: CachedNetworkImage(
                    imageUrl: _newsItem.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: Insets.smallMargin, horizontal: Insets.largeMargin),
                  child: Text(
                    _newsItem.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.newsTitleTextStyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Insets.largeMargin),
                  child: Text(
                    _newsItem.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.newsDescriptionTextStyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: Insets.smallMargin, horizontal: Insets.largeMargin),
                  child: Text(
                    Uri.parse(_newsItem.url).host,
                    style: Styles.newsUrlTextStyle,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_upward),
                tooltip: S.of(context).likeButtonTooltip,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.arrow_downward),
                tooltip: S.of(context).dislikeButtonTooltip,
                onPressed: () {},
              ),
              TextButton.icon(
                icon: Icon(Icons.comment),
                label:
                    Text(S.of(context).commentsButtonText(Random(DateTime.now().millisecondsSinceEpoch).nextInt(100))),
                style: Styles.commentsButtonStyle,
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.report,
                  color: Theme.of(context).errorColor,
                ),
                tooltip: S.of(context).reportFakeTooltip,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
