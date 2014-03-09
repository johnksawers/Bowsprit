// http://emberjs.com/guides/models/using-the-store/
//
//
//Bowsprit.ScriptAdapter = DS.RESTAdapter.extend({
//  namespace: 'api/v2'
//});
//
//Bowsprit.Store = DS.Store.extend({
//	adapter: DS.RESTAdapter.create()
//});


Bowsprit.ApplicationAdapter = DS.RESTAdapter.extend({
  namespace: 'api/v1'
});

Bowsprit.Store = DS.Store.extend({
	revision: 12,
	adapter: Bowsprit.ApplicationAdapter.create()
});