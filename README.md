# ftemplate

Flutter project template

---

## Getting Started 🚀

---

## Logging

For the logging application we used the ILogger interface with the default implementation (DefaultLogger,
uses [logging package](https://pub.dev/packages/logging)).
Usage example: logger.d(message: 'Your message');
You can also create your own implementation and install it before running the application. (See:
packages/app_logging/app_logging.dart)
This package also contains a LoggingInterceptor for logging http requests.