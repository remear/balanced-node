% if mode == 'definition': 
balanced.Holds.list

% else:
var balanced_library = require('balanced');

var balanced = new balanced_library({
    marketplace_uri: "${api_location}",
    secret: "${ctx.api_key}"
});

balanced.Holds.list({ limit: 10, offset: 0 }, function(err, result) {
    /* . . . */
});

% endif