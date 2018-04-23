// ベッドルームの数
$(function(){
    $(".bedroom_count").after('<input type="button" value="+" id="add1" class="plus" />')
    $(".bedroom_count").before('<input type="button" value="-" id="minus1" class="minus" />');
    $(".plus").click(function(){
        var currentVal = parseInt($(this).prev(".bedroom_count").val());
        if (!currentVal || currentVal=="") currentVal = 0;
        $(this).prev(".bedroom_count").val(currentVal + 1);
    });
    $(".minus").click(function(){
        var currentVal = parseInt($(this).next(".bedroom_count").val());
        if (currentVal > 0) {
            $(this).next(".bedroom_count").val(currentVal - 1);
        }
    });
});

// バスルームの数
$(function(){
    $(".bathroom_count").after('<input type="button" value="+" id="add1" class="plus" />')
    $(".bathroom_count").before('<input type="button" value="-" id="minus1" class="minus" />');
    $(".plus").click(function(){
        var currentVal = parseInt($(this).prev(".bathroom_count").val());
        if (!currentVal || currentVal=="") currentVal = 0;
        $(this).prev(".bathroom_count").val(currentVal + 1);
    });
    $(".minus").click(function(){
        var currentVal = parseInt($(this).next(".bathroom_count").val());
        if (currentVal > 0) {
            $(this).next(".bathroom_count").val(currentVal - 1);
        }
    });
});


// 定員の数
$(function(){
    $(".capacity_count").after('<input type="button" value="+" id="add1" class="plus" />')
    $(".capacity_count").before('<input type="button" value="-" id="minus1" class="minus" />');
    $(".plus").click(function(){
        var currentVal = parseInt($(this).prev(".capacity_count").val());
        if (!currentVal || currentVal=="") currentVal = 0;
        $(this).prev(".capacity_count").val(currentVal + 1);
    });
    $(".minus").click(function(){
        var currentVal = parseInt($(this).next(".capacity_count").val());
        if (currentVal > 0) {
            $(this).next(".capacity_count").val(currentVal - 1);
        }
    });
});
