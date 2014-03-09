Bowsprit.ScriptsRoute = Ember.Route.extend({
  model: function() {
    return Bowsprit.Script.find();
  }
});