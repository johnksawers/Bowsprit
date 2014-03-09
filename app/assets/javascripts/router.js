// For more information see: http://emberjs.com/guides/routing/
Bowsprit.Router.map(function() {
  this.resource("scripts", function() {
    this.resource("script", { path: ":script_id" });
  });
});