$(function() {
  function replaceHouseTypeOptions(houseTypes, selectElement) {
    selectElement.html('<option value>建物タイプを選択</option>');
    $.each(houseTypes, function() {
      var optionElement = $('<option>').val(this.id).text(this.type);
      selectElement.append(optionElement);
    });
  };

  $('.select-category').change(function() {
    var houseTypeOptionPath = $(this).find('option:selected').data('houseTypePath');
    var selectHouseType = $(this).closest('form').find('.select-house-type');
    if (houseTypeOptionPath != null) {
      $.ajax({
        url: houseTypeOptionPath,
        type: "GET",
      })
      .done(function(houseTypes) {
        replaceHouseTypeOptions(houseTypes, selectHouseType)
      })
      .fail(function(XMLHttpRequest, textStatus, errorThrown) {
        console.error("Error occurred in replaceChildrenOptions");
        console.log("XMLHttpRequest: " + XMLHttpRequest.status);
        console.log("textStatus: " + textStatus);
        return console.log("errorThrown: " + errorThrown);
      })
    } else {
      replaceHouseTypeOptions([], selectHouseType);
    };
  });
});
