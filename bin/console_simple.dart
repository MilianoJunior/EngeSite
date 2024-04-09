<!DOCTYPE html>
<html>
<head>
  <!--
    If you are serving your web app in a path other than the root, change the
    href value below to reflect the base path you are serving from.

    The path provided below has to start and end with a slash "/" in order for
    it to work correctly.

    Fore more details:
    * https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base
  -->
  <base href="/">

  <meta charset="UTF-8">
  <meta content="IE=Edge" http-equiv="X-UA-Compatible">

  <!-- iOS meta tags & icons -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="SiteEngesep">

  

  <meta name="robots" content="noindex" />

  <!-- Favicon -->
  <link rel="icon" href="logo_com_sombra.png" sizes="any"/>
  

  <!-- Open Graph & SEO tags -->
  <meta property="og:title" content="EngeSEP" />
  <meta property="og:description" content="EngeSEP Engenharia Integrada" />
  <meta property="og:image" content="/assets/assets/images/logo.png" /> 
  <meta name="twitter:title" content="EngeSEP" />
  <meta name="twitter:description" content="EngeSEP Engenharia Integrada" />
  <meta name="twitter:image" content="/assets/assets/images/logo.png" />
  <meta name="twitter:card" content="summary_large_image" />

  <title> EngeSEP </title>
  <meta name="description" content="EngeSEP Engenharia Integrada" />
    

  <!-- Status Bar color in Safari browser (iOS) and PWA -->
  <meta name="theme-color" media="(prefers-color-scheme: light)" content="#0089ff">
  <meta name="theme-color" media="(prefers-color-scheme: dark)"  content="#2797ff">

  <link rel="manifest" href="manifest.json">
  <script>
    // The value below is injected by flutter build, do not touch.
    var serviceWorkerVersion = null;
  </script>
  <!-- This script adds the flutter initialization JS code -->
  <script src="flutter.js" defer></script>
</head>
<body>
  
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBOnvlvmc0hCJd5y2jIYJqy_XTuLCTn5SQ"></script>
  
  
  
  <script>
    window.addEventListener('load', function (ev) {
      // Download main.dart.js
      _flutter.loader.loadEntrypoint({
        entrypointUrl: 'main.dart.js',
        serviceWorker: {
          serviceWorkerUrl: 'flutter_service_worker.js?v=',
          serviceWorkerVersion: serviceWorkerVersion,
        },
        onEntrypointLoaded: async function(engineInitializer) {
          // Initialize the Flutter engine
          let appRunner = await engineInitializer.initializeEngine({});
          // Run the app
          await appRunner.runApp();
        }
      });
    });
  </script>
</body>
</html>