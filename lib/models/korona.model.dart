class Corona{
  late int updated;
  late int cases;
  late int todayCases;
  late int deaths;
  late int todayDeaths;
  late int recovered;
  late int todayRecovered;
  late int active;
  late int critical;
  late int casesPerOneMillion;
  late double deathsPerOneMillion;
  late int tests;
  late double testsPerOneMillion;
  late int population;
  late int oneCasePerPeople;
  late int oneDeathPerPeople;
  late int oneTestPerPeople;
  late double activePerOneMillion;
  late double recoveredPerOneMillion;
  late double criticalPerOneMillion;
  late int affectedCountries;

  Corona(
      this.updated,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.todayRecovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion,
      this.population,
      this.oneCasePerPeople,
      this.oneDeathPerPeople,
      this.oneTestPerPeople,
      this.activePerOneMillion,
      this.recoveredPerOneMillion,
      this.criticalPerOneMillion,
      this.affectedCountries,
      );
  Corona.fromJson(Map<String, dynamic> json){
    updated = json['updated'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = json['casesPerOneMillion'];
    deathsPerOneMillion = json['deathsPerOneMillion'];
    tests = json['tests'];
    testsPerOneMillion = json['testsPerOneMillion'];
    population = json['population'];
    oneCasePerPeople = json['oneCasePerPeople'];
    oneDeathPerPeople = json['oneDeathPerPeople'];
    oneTestPerPeople = json['oneTestPerPeople'];
    activePerOneMillion = json['activePerOneMillion'];
    recoveredPerOneMillion = json['recoveredPerOneMillion'];
    criticalPerOneMillion = json['criticalPerOneMillion'];
    affectedCountries = json['affectedCountries'];
  }

  Map<String, dynamic>toJson(){
    Map<String, dynamic>map = {
    'updated' : updated,
    'cases' : cases,
    'todayCases' : todayCases,
    'deaths' : deaths,
    'todayDeaths' : todayDeaths,
    'recovered' : recovered,
    'todayRecovered' : todayRecovered,
    'active' : active,
    'critical' : critical,
    'casesPerOneMillion' : casesPerOneMillion,
    'deathsPerOneMillion' : deathsPerOneMillion,
    'tests' : tests,
    'testsPerOneMillion' : testsPerOneMillion,
    'population' : population,
    'oneCasePerPeople' : oneCasePerPeople,
    'oneDeathPerPeople' : oneDeathPerPeople,
    'oneTestPerPeople' : oneTestPerPeople,
    'activePerOneMillion' : activePerOneMillion,
    'recoveredPerOneMillion' : recoveredPerOneMillion,
    'criticalPerOneMillion' : criticalPerOneMillion,
    'affectedCountries' : affectedCountries,
    };
    return map;
  }


}