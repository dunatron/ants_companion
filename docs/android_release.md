## Create a keystore

This command stores the upload-keystore.jks file in your home directory. If you want to store it elsewhere, change the argument you pass to the -keystore parameter. However, keep the keystore file private; don't check it into public source control!

I usually store mine in the root of my project and put it in gitignore

```bash
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA \
        -keysize 2048 -validity 10000 -alias upload
```

## Parameters

- **`-genkey`**:

  - Indicates that you want to generate a new key pair and self-signed certificate.

- **`-v`**:

  - Stands for verbose mode, which provides additional details and prompts during the key generation process.

- **`-keystore ~/upload-keystore.jks`**:

  - Specifies the path and name of the keystore file where the key pair will be stored. In this case, it’s `upload-keystore.jks` in your home directory (`~`).

- **`-keyalg RSA`**:

  - Specifies the algorithm to be used for the key pair. `RSA` is a widely used algorithm for generating public and private keys.

- **`-keysize 2048`**:

  - Defines the size of the key in bits. A key size of 2048 bits is a standard choice that offers a good level of security.

- **`-validity 10000`**:

  - Sets the validity period of the key pair's certificate in days. Here, the certificate will be valid for 10,000 days. This is roughly 27 years, which is typically more than sufficient for most purposes.

- **`-alias upload`**:
  - Specifies an alias for the key pair within the keystore. The alias is a unique name used to refer to this particular key pair.

## Key Lifespan

The key validity period is defined by the `-validity` parameter. In your command, it is set to 10,000 days, which means the key will be valid for approximately 27 years. After this period, the certificate associated with the key pair will expire, and you would need to generate a new key pair and update your app’s signing configuration if necessary.

## Manually sign App (Option 1)

apksigner can be found in the following directory

```bash
/Users/dunatron/Library/Android/sdk/build-tools/34.0.0
```

Sign the apk bundle

```
./apksigner sign --ks /Users/dunatron/Projects/ants_companion/git/stupid_keystore/upload-keystore.jks --ks-key-alias upload  --out  /Users/dunatron/Projects/ants_companion/git/stupid/release/app-release.apk /Users/dunatron/Projects/ants_companion/git/stupid/build/app/outputs/apk/release/app-release.apk
```

## Flutter automatically sign (Option2 recommended)

Create a file named [project]/android/key.properties that contains a reference to your keystore. Don't include the angle brackets (< >). They indicate that the text serves as a placeholder for your values.

```
storePassword=<password-from-previous-step>
keyPassword=<password-from-previous-step>
keyAlias=upload
storeFile=<keystore-file-location>
```

Keep the key.properties file private; don't check it into public source control.

When building your app in release mode, configure gradle to use your upload key. To configure gradle, edit the <project>/android/app/build.gradle file.

```gradle
def keystoreProperties = new Properties()
def keystorePropertiesFile = rootProject.file('key.properties')
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
}
```

Add the signing configuration before the buildTypes property block inside the android property block.

```gradle
buildTypes {
    release {
        // Specifies the signing configuration for release builds.
        // Signing configurations are used to sign APKs or app bundles.
        // It uses the release signing configuration defined
        // in the signingConfigs block.
        // This is important for distributing your app to users
        // via app stores or other methods.
        signingConfig signingConfigs.release
        // Enables code shrinking and obfuscation for release builds.
        // When set to true,
        // this option enables ProGuard or R8 to remove unused code and optimize the app,
        // which can reduce the size of the APK and improve performance.
        // It also obfuscates code to make it harder to reverse-engineer.
        minifyEnabled true
        // Specifies the ProGuard configuration files to
        // use for code shrinking and obfuscation.
        // getDefaultProguardFile('proguard-android.txt')
        // refers to a default ProGuard configuration file
        // that comes with the Android SDK.
        // You can customize ProGuard rules by adding
        // additional configuration files if needed
        proguardFiles getDefaultProguardFile('proguard-android.txt')
        // Note: x86 is excluded as it's not supported by Flutter,
        // meaning the build will not include native libraries for this architecture.
        ndk {
            abiFilters 'arm64-v8a', 'armeabi-v7a', 'x86_64'
        }
    }
    debug {
        // TODO: Add your own signing config for the release build.
        // Signing with the debug keys for now, so `flutter run --release` works.
        // signingConfig = signingConfigs.debug
        signingConfig signingConfigs.debug
    }
  }
```

You might need to run `flutter clean` after changing the gradle file. This prevents cached builds from affecting the signing process.

```bash
flutter build appbundle
```
