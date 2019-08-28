var user = {
    listUser: [],

    init: function () {
        var me = this;
        user.registerEvents1();
    },

    initListUsers: function (model) {
        var me = this;
        $.grep(model, function (ele, i) {
            me.listUser.push(ele);
        });
        console.log(me.listUser);
    },

    registerEvents1: async function () {
        var me = this;
        
        $('.btn-active').off('click').on('click', function (e) {
            e.preventDefault();
            var btn = $(this);
            var id = btn.data('id');
            $.each(me.listUser, function (i, ele) {
                if (ele.ID === id) {
                    var username = ele.Username;
                    if (ele.Status == false) {
                        if (confirm("Bạn có muốn mở khóa tài khoản " + username + " này?")) {
                            user.loadStatus(id, btn);
                            ele.Status = true;
                        }
                    }
                    else {
                        if (confirm("Bạn có muốn khóa tài khoản " + username + " này?")) {
                            user.loadStatus(id, btn);
                            ele.Status = false;
                        }
                    }
                }
            });
        });

        $('.view-modal').dblclick(function () {
            $('#ViewModal').modal('show');
            var btn = $(this);
            var id = btn.data('id');
            user.loadView(id);
        });

        $('.edit').click(function () {
            var inputs = document.getElementsByClassName('remove-edit');
            var id = $('.view-modal').click().data('id');
               
            
            if (inputs[1].disabled == false) {
                    user.update();
                    $('.close-modal').click();
                
                
            }
            else {
                for (var i = 0; i < inputs.length; i++) {
                    inputs[i].disabled = false;
                }
                $('.pass').remove();
                $('.password-eyes').before('<button class = "btn btn-success form-control reset">Reset</button>');
                $('.password-eyes').hide();
                
                    $('.reset').click(function () {
                        if (confirm("Bạn có muốn reset mật khẩu")) {
                            user.updatePassword();
                            $('.reset').remove();
                            $('.password-eyes').before('<button class = "btn btn-primary form-control reset" disabled>Mật khẩu mặc định là: 123456</button>');
                        }
                    });
            }
        });

        $(".close-modal, .x-close").click(function () {
            var inputs = document.getElementsByClassName('remove-edit');
            for (var i = 0; i < inputs.length; i++) {
                inputs[i].disabled = true;
            }
            $('.reset').remove();
            $('.pass').remove();
            $('.password-eyes').before('<input type="password" id="txtpassWord" class="form-control remove-edit pass" disabled ="disabled" />');
            $('.password-eyes').show();
        });
        $('.pass').after('<span toggle="#password-eyes" class="fa fa-fw fa-eye field-icon password-eyes" title = "Ẩn/Hiện"></span>');
        $('.password-eyes').click(function () {
            $(this).toggleClass("fa-eye fa-eye-slash");
            var preview = $(this).prev();
            var type = preview.attr('type');
            (type == 'password') ? preview.attr('type', 'text') : preview.attr('type', 'password');
            
            //var value = preview.val();
            //var id = preview.attr('id');
            //var classes = preview.attr('class');
            //var disable = preview.attr('disabled');
            //preview.remove();
            //$(this).before('<input type="' + type_new + '" id="' + id + '" value = "' + value + '" class="' + classes + '" disabled ="' + disable + '" />')
        });
        var btn = $('#profile').attr('loaddata', '');
        console.log(btn);
        $('#profile').ready(function () {
            var id = btn.data('id');
            user.loadView(id);
        }); 
        user.loadCity();
        user.loadDistrict();
        user.loadWard();

    },
    //registerEvents: function () {
    //    $('.btn-active').off('click').on('click', function (e) {
    //        e.preventDefault();
    //        var btn = $(this);
    //        var id = btn.data('id');
    //        $.ajax({
    //            url: '/Admin/User/GetDetail',
    //            data: {
    //                id: id
    //            },
    //            type: 'GET',
    //            dataType: 'json',
    //            success: function (response) {
    //                data = response.data;
    //                if (data.Status == false) {
    //                    if (confirm("Bạn có muốn mở khóa tài khoản " + data.Username + " này?")) {
    //                        user.loadStatus(id, btn);
    //                    }
    //                }
    //                else {
    //                    if (confirm("Bạn có muốn khóa tài khoản " + data.Username + " này?")) {
    //                        user.loadStatus(id, btn);
    //                    }
    //                }
    //            }
    //        });
    //    });
    //    $('.view-modal').dblclick(function () {
    //        $('#ViewModal').modal('show');
    //        var btn = $(this);
    //        var id = btn.data('id');
    //        user.loadView(id);

    //    });
    //    user.loadCity();
    //    user.loadDistrict();
    //    user.loadWard();
    //},
    loadStatus: function (id, btn) {
        $.ajax({
            url: "/Admin/User/ChangeStatus",
            data: { id, id },
            dataType: "json",
            type: "POST",
            success: function (response) {
                if (response.status == true) {
                    btn.text("Active").addClass("status-active");
                    btn.removeClass("status-block");
                }
                else {
                    btn.text("Block").addClass("status-block");
                    btn.removeClass("status-active");
                }
            }
        });
    },

    loadView: function (id) {
        $.ajax({
            url: '/Admin/User/GetDetail',
            data: {
                id: id
            },
            type: 'GET',
            dataType: 'json',
            success: function (response) {
                var data = response.data;
                var _regexTime = /\/Date\((\d+)\)\//gm;
                var _time1 = new Date(parseInt(data.Birthday.replace(_regexTime, "$1")));
                var _date1 = _time1.getDate() + "/" + eval(_time1.getMonth() + 1) + "/" + _time1.getFullYear();
                $("#datepicker").datepicker({
                    autoclose: true,
                    todayHighlight: true
                }).datepicker('setDate', _date1);
                $('#txtuser').val(data.Username);
                $('#txtname').val(data.Name);
                $('#txtaddress').val(data.Address);
                $('#txtemail').val(data.Email);
                $('#txtphone').val(data.Phone);
                $('#Birthday').val(_date1);
                $('#txtpassWord').val(data.Password);
                $('#city').val(data.CityID);
                
                //if ($('#city option:selected').val() == data.CityID) {
                //    $.ajax({
                //        type: 'GET',
                //        url: '/Admin/User/getDistrict',
                //        data: {
                //            CityID: $('#city option:selected').val()
                //        },
                //        success: function (res) {
                //            $('#district').empty().append('<option disabled>--Lựa chọn--</option>');
                //            for (var i = 0; i < res.length; i++) {
                //                $('#district').append('<option id ="' + res[i].districtID + '" value="' + res[i].districtID + '">' + res[i].districtName + '</option>');

                //                //document.getElementById('district').selectedIndex = data.districtID;
                //                if (res[i].districtID == data.DistrictID) {
                //                    //$('#district option:selected').val(data.DistrictID);
                //                    document.getElementById('district').selectedIndex = i + 1;
                //                }
                //            }
                //            $('#district').trigger('change');

                //        }
                //    });
                //}
                //if ($('#district option:selected').val() != data.DistrictID) {
                //    $.ajax({
                //        type: 'GET',
                //        url: '/Admin/User/getDistrict',
                //        data: {
                //            CityID: $('#city option:selected').val()
                //        },
                //        success: function (res) {
                //            $('#district').empty().append('<option disabled>--Lựa chọn--</option>');
                //            for (var i = 0; i < res.length; i++) {
                //                $('#district').append('<option id ="' + res[i].districtID + '" value="' + res[i].districtID + '">' + res[i].districtName + '</option>');
                                
                //                if (res[i].districtID == data.DistrictID) {
                //                    //$('#district option:selected').val(data.DistrictID);
                //                    document.getElementById('district').selectedIndex = i + 1;
                //                }
                //            }
                //            $('#district').trigger('change');
                //            $.ajax({
                //                type: 'GET',
                //                url: '/Admin/User/getWard',
                //                data: {
                //                    DistrictID: $('#district option:selected').val()
                //                },
                //                success: function (res) {
                //                    $('#ward').empty().append('<option value="-1" disabled selected>--Lựa chọn--</option>');
                //                    for (var i = 0; i < res.length; i++) {
                //                        $('#ward').append('<option id ="' + res[i].wardID + '" value="' + res[i].wardID + '">' + res[i].wardName + '</option>')
                //                        if (res[i].wardID == data.WardID) {
                //                            //$('#district option:selected').val(data.DistrictID);
                //                            document.getElementById('ward').selectedIndex = i + 1;
                //                        }
                //                    }
                //                    $('#ward').trigger('change');
                //                    console.log(user.Getdata());
                //                }
                //            });
                //        }
                //    });

                   

                //}
                var _time = new Date(parseInt(data.CreatedDate.replace(_regexTime, "$1")));
                var _date = _time.getDate() + "/" + eval(_time.getMonth() + 1) + "/" + _time.getFullYear();
                $('#txtcreateDate').val(_date);
            }
        })
    },

    loadCity: function () {
        $.ajax({
            type: "GET",
            url: "/Admin/User/getCity",
            data: {},
            success: function (data) {
                $('#city').children().remove();
                for (var i = 0; i < data.length; i++) {
                    $('#city').append('<option id="' + data[i].cityID + '" value="' + data[i].cityID + '" data-id = "' + data[i].cityID + '">' + data[i].cityName + '</option>')
                }
                $('#city').trigger('change');

            }
        });
    },

    loadDistrict: function () {

        $('#city').on('change', async function () {
            var dat = await user.Getdata();
            $.ajax({
                type: 'GET',
                url: '/Admin/User/getDistrict',
                data: {
                    CityID: $('#city option:selected').val()
                },
                success: function (data) {
                    debugger
                    $('#district').empty().append('<option value="-1" disabled selected>--Lựa chọn--</option>');
                    for (var i = 0; i < data.length; i++) {
                        $('#district').append('<option id ="' + data[i].districtID + '" value="' + data[i].districtID + '" data-id = "' + data[i].districtID + '">' + data[i].districtName + '</option>')
                        if (data[i].districtID == dat.DistrictID) {
                            document.getElementById('district').selectedIndex = i + 1;
                        }
                    }
                    $('#district').trigger('change');

                }
            });
        });

    },

    loadWard: function () {
        $('#district').on('change', async function () {
            var dat = await user.Getdata();
            $.ajax({
                type: 'GET',
                url: '/Admin/User/getWard',
                data: {
                    DistrictID: $('#district option:selected').val()
                },

                success: function (res) {
                    debugger
                    for (var i = 0; i < res.length; i++) {
                        $('#ward').append('<option id ="' + res[i].wardID + '" value="' + res[i].wardID + '">' + res[i].wardName + '</option>');
                        if (res[i].wardID == dat.WardID) {
                            document.getElementById('ward').selectedIndex = i + 1;
                        }
                    }
                    $('#ward').trigger('change');
                }
                
            });
        });
    },
    update: function () {
        
        var name = $('#txtname').val();
        var address = $('#txtaddress').val();
        var email = $('#txtemail').val();
        var phone = $('#txtphone').val();
        var cityID = $('#city').val();
        var districtID = $('#district').val();
        var wardID = $('#ward').val();
        var password = $('#txtpassWord').val();
        var userr = {
            id: $('.view-modal').click().data('id'),
            Name: name,
            Address: address,
            Email: email,
            Phone: phone,
            CityID: cityID,
            DistrictID: districtID,
            WardID: wardID,
            Password: password
        }
        $.ajax({
            url: '/Admin/User/Update',
            data: {
                id: JSON.stringify(userr)
            },
            type: 'POST',
            dataType: 'json',
            success: function (response) {
                alert('Sửa thành công');
            }
        });
        
    },
    updatePassword: function () {
        var passnew = "123456";
        var userr = {
            id: $('.view-modal').click().data('id'),
            PassNew: passnew
        }
        $.ajax({
            url: '/Admin/User/UpdatePassword',
            data: {
                id: JSON.stringify(userr)
            },
            type: 'POST',
            dataType: 'json',
            success: function (data) {
                console.log(data);
            }
        });

    },

    Getdata: async function () {
        var data = '';
        await $.ajax({
            url: '/Admin/User/GetDetail',
            data: {
                id: $('.view-modal').click().data('id')
            },
            type: 'POST',
            dataType: 'json',
            success: function (res) {
                data = res.data;
                console.log(data);
            }
        });
        return data;
    }
}

user.init();