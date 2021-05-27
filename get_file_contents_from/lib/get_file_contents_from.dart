library get_file_contents_from;

import 'dart:io';
import 'dart:io' as io;

class FileManager {
  String pathDirectory = '/storage/emulated/0/';
  Future<List> getContentsWithExtension(String path, String ext) async {
    //ext should be pdf or png or like jpg
    List<FileSystemEntity> file;
    var _fullPaths = [];
    pathDirectory = path;
    file = await Directory(path).list().toList();

    for (int i = 0; i < file.length; i++) {
      if (file[i].path.toString().split('/').last.split('.').last == ext ||
          file[i].path.toString().split('/').last.split('.').length < 2) {
        _fullPaths.add(file[i].path.toString());
      }
    }

    return _fullPaths;
  }

  Future<List> getContentsFromPath(String path) async {
    List<FileSystemEntity> file;

    var _fullPaths = [];
    pathDirectory = path;
    file = await Directory(path).list().toList();

    for (int i = 0; i < file.length; i++) {
      _fullPaths.add(file[i].path.toString());
    }
    return _fullPaths;
  }

  Future<List> getNumberOfElementsInPath(String path, String _extension) async {
    Future<List> _getContentsFromPath(String path) async {
      List<FileSystemEntity> file;

      var _fullPaths = [];
      file = await Directory(path).list().toList();

      for (int i = 0; i < file.length; i++) {
        _fullPaths.add(file[i].path.toString());
      }
      print(pathDirectory);
      return _fullPaths;
    }

    List file = [];
    List listCounts = [];
    file = await _getContentsFromPath(path);

    for (int _i = 0; _i < file.length; _i++) {
      List _o;
      if (file[_i].toString().split('/').last.split('.').length > 1) {
        _o = [];
      } else {
        try {
          _o = await _getContentsFromPath(file[_i].toString());
        } catch (e) {
          print('error $e');
          _o = [];
        }
      }
      listCounts.add(_o.length);
    }
    return listCounts;
  }

  Future<List> getContentsFilenamesFromPath(String path) async {
    List file = [];
    var _fileNames = [];
    pathDirectory = path;
    file = io.Directory(path).listSync();

    for (int i = 0; i < file.length; i++) {
      _fileNames.add((file[i].path.toString().split('/').last));
    }
    return _fileNames;
  }

  Future<String> getPreviousDirectory() async {
    String _tempDirectory = pathDirectory;
    if (_tempDirectory != "/storage/emulated/0/") {
      int _length = _tempDirectory
          .split("/")[_tempDirectory.split("/").length - 2]
          .length;
      String _finalPath =
          _tempDirectory.substring(0, _tempDirectory.length - _length - 1);
      print(_finalPath);
      return _finalPath;
    } else {
      String _finalPath = "/storage/emulated/0/";
      return _finalPath;
    }
  }

  Future<String> getCurrentDirectory() async {
    return Directory.current.path;
  }
}
