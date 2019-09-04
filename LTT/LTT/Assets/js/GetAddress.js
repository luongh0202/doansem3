$.ajax({
    type: "GET",
    url: "GetProvice",
    data: {},
    success: function (data) {
        //$('#city').children().remove();
        //for (var i = 0; i < data.length; i++) {
        //    $('#city').append('<option id="' + data[i].cityID + '" value="' + data[i].cityID + '" data-id = "' + data[i].cityID + '">' + data[i].cityName + '</option>')
        //}
        //$('#city').trigger('change');
        console.log(data);

    }
});