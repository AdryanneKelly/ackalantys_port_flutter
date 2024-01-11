'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"index.html": "bf83d0e4f0b53c81315e537d4cb8a3ea",
"/": "bf83d0e4f0b53c81315e537d4cb8a3ea",
"assets/assets/images/profile.png": "57b34bd0f2daf8213693b74ddc340220",
"assets/assets/images/image_project.png": "a142a1d909680790df7199d74fe9e4b8",
"assets/assets/images/image.png": "4e1618db59df59d96ef2c7fa17b72961",
"assets/assets/images/image01.png": "50a79634d793da6f0f815170829afb26",
"assets/assets/images/cat_code.png": "c595bd949ae5581cc05d8019ac75984e",
"assets/assets/images/image02.png": "cf8d982d2301ae374179b3df898be793",
"assets/assets/images/image_project3.png": "20f14125110a901302a6bbd1343ae631",
"assets/assets/images/code.png": "b322f665a135f52097bc89c90e55bfa8",
"assets/assets/images/image03.png": "f7de4dae1fc0409bdf0289a6bbfe4939",
"assets/assets/icons/python.png": "c71dfcdef8881536889bbaf85d779e02",
"assets/assets/icons/arrow_trans.png": "598d464f56747e3dec7de0040cf966dd",
"assets/assets/icons/php.png": "7731cace8eaaae2d72391dc054043171",
"assets/assets/icons/en.png": "8be5ca118b5452663e972fdcc3b73121",
"assets/assets/icons/sun.png": "3b216bfe14befd11a2be8063259a4b97",
"assets/assets/icons/arrow_left.png": "1b7c390aad2e4a1bec2143894f24e667",
"assets/assets/icons/globe.png": "0d03146b03335db68ad6ae9c97ff85b5",
"assets/assets/icons/instagram.png": "eb8839cfdfd098084aca6f29dbc492f5",
"assets/assets/icons/menu.png": "3d84cef3f5ba6445a86ed810e5cb4153",
"assets/assets/icons/close.png": "5ecc8ff667f88ca5c6b47127d3ea96c3",
"assets/assets/icons/tailwind.png": "ef9e21e6c73663fad59475641a800d1e",
"assets/assets/icons/arrow_right.png": "78c5a6a69a1adcaaf5d5fff2b73415b8",
"assets/assets/icons/arrow_up.png": "f4c6a9e6dd388b6e05d53905929b20ca",
"assets/assets/icons/github.png": "7349440666c585ff7bf00533e9ab19ee",
"assets/assets/icons/moon.png": "bccd8fbc287c72c6611176bcf4da317b",
"assets/assets/icons/mysql.png": "468866e40e40ce34506fb52c71ad4405",
"assets/assets/icons/document.png": "e39f6b2057f929347a83440c46bc1a88",
"assets/assets/icons/laravel.png": "29a64162a2e23532a78397eb710e37b3",
"assets/assets/icons/js-egua.png": "dbc53ee6dd459e5df8c8c31daf20650c",
"assets/assets/icons/linkedin.png": "a239b1c77ea560bbce4aa7e9388e6f88",
"assets/assets/icons/flutter.png": "fa514d09e8e0c44abc4f6fc7686d9ce0",
"assets/assets/icons/pt_lula.png": "5b63bd5e3733617f7c193b1a805d23c0",
"assets/NOTICES": "0d9e0dac84a376fdd6a9717401366a7b",
"assets/fonts/MaterialIcons-Regular.otf": "bd9eda3e45aed0d21d167558c5550700",
"assets/AssetManifest.bin": "b038859bd219c7e1924a551f06663f05",
"assets/AssetManifest.json": "47d051daf539a5afdb88dd4e956ee33c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/AssetManifest.bin.json": "5a758df4a8a133ef4d0e8b41037d2255",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"manifest.json": "50e5668fe5f51fbbe1b15266e2dd8c39",
"main.dart.js": "bc66406512b1d435592202524dc63b20",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"version.json": "29dc3bef083450a046277116cc1113b1"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
