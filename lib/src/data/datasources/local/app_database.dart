import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../local/dao/article_dao.dart';
import '../../../domain/models/article.dart';
import '../local/converters/source_type_converter.dart';

part 'app_database.g.dart';

@TypeConverters([SourceTypeConverter])
@Database(version: 1, entities: [Article])
abstract class AppDatabase extends FloorDatabase {
  ArticleDao get articleDao;
}
