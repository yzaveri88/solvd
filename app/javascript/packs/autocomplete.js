// import {autocomplete} from 'autocomplete/src/standalone/index.js';
// import algoliasearch from 'algoliasearch';

// var client = algoliasearch('NKQS8REJT5', '5bdf47af2952201bc12a0222b7be8aa3');
// var index = client.initIndex('SubCategory');
// autocomplete('#query-input', { hint: false }, [
//   {
//     source: autocomplete.sources.hits(index, { hitsPerPage: 5 }),
//     displayKey: 'name',
//     templates: {
//       suggestion: function(suggestion) {
//         return suggestion._highlightResult.name.value;
//       }
//     }
//   }
// ]).on('autocomplete:selected', function(event, suggestion, dataset) {
//   console.log(suggestion, dataset);
// });

