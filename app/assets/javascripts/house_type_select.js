$(function() {
  function replaceHouseTypeOptions(houseTypes, selectElement) {
    selectElement.html('<option value>建物タイプを選択</option>');
    $.each(houseTypes, function() {
      var categoryId = $('.select-category').find('option:selected').val();
      var discriptionPath =  '/categories/' + categoryId + '/house_types/' + this.id;
      var optionElement = $('<option>').val(this.id).text(this.type).attr('data-discription-path', discriptionPath);
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

  $('.select-house-type').change(function(){
    houseTypeId = $(this).find('option:selected').val();
    discriptionPath = $(this).find('option:selected').data('discriptionPath');
    if (discriptionPath != null) {
      $.ajax({
        url: discriptionPath,
        type: "GET",
      })
      .done(function(houseTypeData){
        console.log('通信成功')
        console.log(houseTypeData)
        $('.house-discription').text(houseTypeData.house_discription);
      })
      .fail(function(XMLHttpRequest, textStatus, errorThrown) {
        console.log('通信失敗')
        console.error("Error occurred in replaceChildrenOptions");
        console.log("XMLHttpRequest: " + XMLHttpRequest.status);
        console.log("textStatus: " + textStatus);
        return console.log("errorThrown: " + errorThrown);
      });
    } else {
      $('.house-discription').text('')
    };
  });
});
