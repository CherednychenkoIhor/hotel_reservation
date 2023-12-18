import 'dart:io';

import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Generate files');

  final featurePath = path.join(
    Directory.current.path,
    (context.vars['feature_name'] as String).snakeCase,
  );

  final destination = Directory(
    path.join(
      featurePath,
      'application',
    ),
  );

  final generatorTarget = DirectoryGeneratorTarget(destination);

  final generator = await MasonGenerator.fromBrick(
    Brick.version(name: 'bloc', version: 'any'),
  );

  var blocContextVariables = <String, dynamic>{
    'name': context.vars['feature_name'],
    'style': 'freezed',
  };

  await generator.hooks.preGen(
    workingDirectory: destination.path,
    vars: blocContextVariables,
    onVarsChanged: (vars) {
      blocContextVariables = vars;
    },
  );

  await generator.generate(
    generatorTarget,
    vars: blocContextVariables,
  );

  await Process.run(
    'flutter',
    ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs'],
    workingDirectory: featurePath,
  );

  await Process.run(
    'git',
    ['add', '--all'],
    workingDirectory: featurePath,
  );

  progress.complete();
}
