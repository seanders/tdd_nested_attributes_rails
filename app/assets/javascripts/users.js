$(document).ready(function(){
  $('#new_involvement').on('click', function(e) {
    e.preventDefault();
    var parentIndex = addNewFields("INVOLVEMENTUNIQ", "div.target");
    var childIndex = addNewFields("RESPUNIQ", "." + parentIndex);
    replaceWithParentClass("INVOLVEMENTUNIQ", parentIndex, childIndex);
  });

  $('#new_user').on('click', '#new_responsibility', function(e) {
    e.preventDefault();
    var childIndex = addNewFields("RESPUNIQ", $(this).parent().parent());
    var parentIndex = $(this).parent().parent().attr('class');
    replaceWithParentClass("INVOLVEMENTUNIQ", parentIndex, childIndex);
  });
});

var addNewFields = function(selectorID,targetArea){
  var $elem = $('#'+ selectorID);
  var regex = new RegExp(selectorID, 'g');
  var childIndex = new Date().getTime();
  var newElem = $('<p>').append($elem.clone().html().replace(regex, childIndex));
  var newDiv = $('<div class='+childIndex+'>').append(newElem);
  $(targetArea).append(newDiv);
  return childIndex;
};

var replaceWithParentClass = function(parentUniq, parentID, divClass) {
  var regex = new RegExp(parentUniq, 'g');
  var childIndex = new Date().getTime();
  var newHtml = $("." + divClass).html().replace(regex, parentID);
  $("." + divClass).html(newHtml);
};
