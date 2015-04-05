// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library services.completion.computer.dart.projection;

import 'dart:async';

import 'package:analysis_server/src/services/completion/dart_completion_manager.dart';
import 'package:analysis_server/src/services/completion/local_declaration_visitor.dart';
import 'package:analysis_server/src/services/completion/optype.dart';
import 'package:analysis_server/src/services/completion/suggestion_builder.dart';
import 'package:analyzer/src/generated/ast.dart';
import 'package:analyzer/src/generated/element.dart';

import '../../protocol_server.dart' show CompletionSuggestionKind;


class ProjectiveComputer extends DartCompletionComputer {

  @override
  bool computeFast(DartCompletionRequest request) {
    return false;
  }

  @override
  Future<bool> computeFull(DartCompletionRequest request) {


    // Cases entity -> null, left most item is the containing node
    // [null, Compilation Unit] =>
    // Top level Definition
    //

    print (request);

    print ("Containing Node ${request.target.containingNode}");


//   request.searchEngine.

    print ("Entity ${request.target.entity}");
    print ("Entity ${request.target.entity.runtimeType}");

    print ("REQ");
////    print (request);
    return new Future.value(false);
  }


  computePossibleGrammarContinuations(DartCompletionRequest request) {
   if (request.target.containingNode is CompilationUnit) {
     print ("Containment: Compilation Unit");



     //scriptTag? libraryName? importOrExport* partDirective* topLevelDefinition*
//


//   topLevelDefinition=>
//         classDefinition ||
//         enumType ||
//         typeAlias ||
//         EXTERNAL? functionSignature `;' ||
//         EXTERNAL? getterSignature `;' ||
//         EXTERNAL? setterSignature `;' ||
//         functionSignature functionBody ||
//         returnType? GET identifier functionBody ||
//         returnType? SET identifier formalParameterList functionBody ||
//         (FINAL $|$ CONST) type? staticFinalDeclarationList `{\escapegrammar ;}';
//         variableDeclaration `{\escapegrammar ;}'



   }
  }

  computePossibleContinuation_ScriptTag(DartCompletionRequest request) {
    return new ScriptTag(null);
  }



}
