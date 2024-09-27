
class AppAssets {

  static const String mainPic = 'assets/mainPic.png';
  static const String audi = 'assets/audi.png';
  static const String rangeRover = 'assets/rangeRover.png';
  static const String toyota = 'assets/toyota.png';
  static const String lamborghini = 'assets/lamborghini.png';
  static const String tesla = 'assets/tesla.png';
  static const String frame = 'assets/frame.png';
  static const String pure2 = 'assets/pure2.png';
  static const String tiire = 'assets/tiire.png';
  static const String ellipse = 'assets/ellipse.png';
  static const String ellipse2 = 'assets/ellipse2.png';
  static const String ellipse3 = 'assets/ellipse3.png';

  static String getAssetPath(String name)
  {
    switch(name){
      case 'RANGE ROVER': return AppAssets.rangeRover;
      case 'TOYOTA': return AppAssets.toyota;
      case 'AUDI Red A6': return AppAssets.audi;
      case 'LAMBORGHINI': return AppAssets.lamborghini;
      case 'TESLA': return AppAssets.tesla;
      default: print('name not found $name'); return '';
    }
  }

}

