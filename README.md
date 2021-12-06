<p align="center"> 
<img src="https://eidoohelp.zendesk.com/hc/article_attachments/360071262952/mceclip0.png">
</p>

[![pub.dev][pub-dev-shield]][pub-dev-url]
[![Effective Dart][effective-dart-shield]][effective-dart-url]
[![Stars][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

A session storage, to be used with [walletconnect_dart](https://pub.dev/packages/walletconnect_dart) to securely store walletconnect sessions using [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage).

WalletConnect is an open source protocol for connecting decentralised applications to mobile wallets
with QR code scanning or deep linking. A user can interact securely with any Dapp from their mobile
phone, making WalletConnect wallets a safer choice compared to desktop or browser extension wallets.

Once installed, you can simply connect your application to a wallet.

```dart
// Define a session storage
final sessionStorage = WalletConnectSecureStorage();
final session = await sessionStorage.getSession();

// Create a connector
connector = WalletConnect(
  bridge: 'https://bridge.walletconnect.org',
  session: session,
  sessionStorage: sessionStorage,
  clientMeta: const PeerMeta(
    name: 'WalletConnect',
    description: 'WalletConnect Developer App',
    url: 'https://walletconnect.org',
    icons: [
      'https://gblobscdn.gitbook.com/spaces%2F-LJJeCjcLrr53DcT1Ml7%2Favatar.png?alt=media'
    ],
  ),
);
```

## Changelog

Please see [CHANGELOG](CHANGELOG.md) for more information on what has changed recently.

## Contributing & Pull Requests
Feel free to send pull requests.

Please see [CONTRIBUTING](.github/CONTRIBUTING.md) for details.

## Credits

- [Tomas Verhelst](https://github.com/rootsoft)
- [All Contributors](../../contributors)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[pub-dev-shield]: https://img.shields.io/pub/v/walletconnect_secure_storage?style=for-the-badge
[pub-dev-url]: https://pub.dev/packages/walletconnect_secure_storage
[effective-dart-shield]: https://img.shields.io/badge/style-effective_dart-40c4ff.svg?style=for-the-badge
[effective-dart-url]: https://github.com/tenhobi/effective_dart
[stars-shield]: https://img.shields.io/github/stars/rootsoft/walletconnect-secure-storage.svg?style=for-the-badge&logo=github&colorB=deeppink&label=stars
[stars-url]: https://packagist.org/packages/rootsoft/walletconnect-secure-storage
[issues-shield]: https://img.shields.io/github/issues/rootsoft/walletconnect-secure-storage.svg?style=for-the-badge
[issues-url]: https://github.com/rootsoft/walletconnect-secure-storage/issues
[license-shield]: https://img.shields.io/github/license/rootsoft/walletconnect-secure-storage.svg?style=for-the-badge
[license-url]: https://github.com/RootSoft/walletconnect-secure-storage/blob/master/LICENSE