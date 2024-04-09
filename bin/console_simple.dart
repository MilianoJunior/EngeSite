
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
