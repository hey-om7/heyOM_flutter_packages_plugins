# Working Hive

## Easiest package which helps to work with the hive package

![https://www.buymeacoffee.com/heyom](https://github.com/hey-om7/FlutterPackage_workingHive/blob/main/forReadme/buymecoffee.png)
https://www.buymeacoffee.com/heyom

---

## > Adding Permissions

```
      <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
      <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />

```

## > Add this in Android Manifest

```
   <application
        ...
        android:requestLegacyExternalStorage="true"
        ...
        </application>
```

---

# Extreme Simple use of the package

## Initialize the class

```
var hive = WorkingHive();
```

## Set a path where you want to store the hive data

```
 hive.initPath = 'what ever your path is';
```

## Initialize the hive

```
await hive.initiateHive();
```

## Writing in hive

```
await hive.writeHive('testKey', 'testData');
```

## Reading in hive

```
await hive.readHive('testKey');
```

---

## Look at the example linked to know more

https://pub.dev/packages/working_hive/example

---

## Getting Started with Flutter

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
