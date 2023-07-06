// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

document.addEventListener("DOMContentLoaded", function() {
    var showItems = 5;
    var $requests = document.querySelectorAll('.request-container tbody tr');
    var totalItems = $requests.length;

    hideItems(showItems);

    document.getElementById('show-more').addEventListener('click', function(e) {
      e.preventDefault();
      showAllItems();
    });

    document.getElementById('show-less').addEventListener('click', function(e) {
      e.preventDefault();
      hideItems(5);
    });

    function hideItems(num) {
      for (var i = num; i < totalItems; i++) {
        $requests[i].style.display = 'none';
      }
      document.getElementById('show-more').style.display = 'block';
      document.getElementById('show-less').style.display = 'none';
    }

    function showAllItems() {
      for (var i = 0; i < totalItems; i++) {
        $requests[i].style.display = '';
      }
      document.getElementById('show-more').style.display = 'none';
      document.getElementById('show-less').style.display = 'block';
    }
  });





