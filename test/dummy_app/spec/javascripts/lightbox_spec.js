//= require jquery

describe("Lightbox", function() {
  it("object was defined", function() {
    expect(lightbox).toBeDefined();
  });

  it("root was found", function() {
    var ele = document.getElementById("lightbox");
    expect(ele.id).toEqual("lightbox");
  });
});
