import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:reputeiros/president_candidates.dart';
import 'package:reputeiros/repository.dart';

import 'candidate.dart';

class _RouteConfiguration {
  final int? _candidateId;

  const _RouteConfiguration(this._candidateId);

  const _RouteConfiguration.home() : _candidateId = null;

  const _RouteConfiguration.details(int candidateId) : _candidateId = candidateId;

  bool get isHome => (_candidateId == null);

  bool get isDetails => (_candidateId != null);

  @override
  String toString() {
    if (isHome) {
      return 'Home';
    }

    if (isDetails) {
      return 'Details(candidateId=$_candidateId)';
    }

    return '[RouteConfiguration(candidateId=$_candidateId)';
  }
}

class ReputeirosRouteInformationParser extends RouteInformationParser<_RouteConfiguration> {
  final _log = Logger('ReputeirosRouteInformationParser');

  @override
  Future<_RouteConfiguration> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '');
    _log.config('route location: $uri');
    final segments = uri.pathSegments;

    // '/'
    if (segments.isEmpty) {
      return _RouteConfiguration.home();
    }

    // '/candidate/:candidateId'
    if (segments.length >= 2 && segments[0] == 'candidate') {
      return _RouteConfiguration.details(int.parse(segments[1]));
    }

    _log.warning('unexpected route path: $uri; setting route to home');
    return _RouteConfiguration.home();
  }

  @override
  RouteInformation? restoreRouteInformation(_RouteConfiguration configuration) {
    _log.config('route configuration: $configuration');
    if (configuration.isHome) {
      return RouteInformation(location: '/');
    }

    if (configuration.isDetails) {
      return RouteInformation(location: '/candidate/${configuration._candidateId}');
    }

    _log.warning('invalid route configuration: $configuration');
    return null;
  }
}

class ReputeirosRouterDelegate extends RouterDelegate<_RouteConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<_RouteConfiguration> {
  final List<Candidate> _allCandidates = Repository().getAllCandidates();
  Candidate? _currentCandidate;

  @override
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  _RouteConfiguration? get currentConfiguration {
    final currentCandidateId = _currentCandidate?.id;

    return (currentCandidateId == null) ? _RouteConfiguration.home() : _RouteConfiguration.details(currentCandidateId);
  }

  @override
  Future<void> setNewRoutePath(_RouteConfiguration configuration) async {
    if (configuration.isHome) {
      _currentCandidate = null;
    } else if (configuration.isDetails) {
      _currentCandidate = _allCandidates.firstWhere((c) => c.id == configuration._candidateId);
      assert(_currentCandidate != null);
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentCandidate = _currentCandidate;
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          key: ValueKey('CandidatesGridPage'),
          child: CandidatesGridPage(
            candidates: _allCandidates,
            onCandidateChanged: (c) {
              _currentCandidate = c;
              notifyListeners();
            },
          ),
        ),
        if (currentCandidate != null)
          MaterialPage(
            key: ValueKey('CandidateNewsListPage'),
            child: CandidateNewsListPage(currentCandidate),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        _currentCandidate = null;
        notifyListeners();

        return true;
      },
    );
  }
}
