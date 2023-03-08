# ftemplate

Flutter project template

---

## Getting Started 🚀

Before you start working with the template, you need execute the following commands:

1. localizations code generator

```sh
$ flutter gen-l10n
```

---

## Logging 🗒️

For the logging application we used the ILogger interface with the default implementation (DefaultLogger,
uses [logging package](https://pub.dev/packages/logging)).
Usage example: logger.d(message: 'Your message');
You can also create your own implementation and install it before running the application. (See:
packages/app_logging/app_logging.dart)
This package also contains a LoggingInterceptor for logging http requests.

## Internationalizing 🌐

This project relies on flutter_localizations and follows
the [official internationalization guide for Flutter][localizations_official_guide]
To add a new localizable string follows the [guide][localizations_add_strings_guide]
When you adding new string values in the app-en.arb file of the application you need to run flutter gen-l10n so that
codegen takes place.

To run the code generator, execute the following command:

```sh
$ flutter gen-l10n
```

Flutter internationalization: .arb files
Application Resource Bundle (abbr. ARB)  is a localization resource format that is simple (based on
JSON) [ApplicationResourceBundleSpecification][localizations_arb_spec]


[localizations_official_guide]: https://docs.flutter.dev/development/accessibility-and-localization/internationalization

[localizations_add_strings_guide]: https://docs.flutter.dev/development/accessibility-and-localization/internationalization#adding-your-own-localized-messages

[localizations_arb_spec]: https://github.com/google/app-resource-bundle/wiki/ApplicationResourceBundleSpecification#namespace-reference-with-or-without-variation-part