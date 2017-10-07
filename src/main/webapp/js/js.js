/**
 * Created by chathuri on 7/27/17.
 */
$(function() {

    $('#add-product-link').click(function(e) {
        $("#add-product").delay(100).fadeIn(100);
        $("#add-category").fadeOut(100);
        $("#update-product").fadeOut(100);
        $("#update-category").fadeOut(100);
        $('#add-category-link').removeClass('active');
        $('#update-product-link').removeClass('active');
        $('#update-category-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
    $('#add-category-link').click(function(e) {
        $("#add-category").delay(100).fadeIn(100);
        $("#add-product").fadeOut(100);
        $("#update-product").fadeOut(100);
        $("#update-category").fadeOut(100);
        $('#add-product-link').removeClass('active');
        $('#update-product-link').removeClass('active');
        $('#update-category-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
    $('#update-product-link').click(function(e) {
        $("#update-product").delay(100).fadeIn(100);
        $("#update-category").fadeOut(100);
        $("#add-product").fadeOut(100);
        $("#add-category").fadeOut(100);
        $('#update-category-link').removeClass('active');
        $('#add-category-link').removeClass('active');
        $('#add-product-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
    $('#update-category-link').click(function(e) {
        $("#update-category").delay(100).fadeIn(100);
        $("#update-product").fadeOut(100);
        $("#add-product").fadeOut(100);
        $("#add-category").fadeOut(100);
        $('#update-product-link').removeClass('active');
        $('#add-category-link').removeClass('active');
        $('#add-product-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });


});



$(function() {

    $('#login-form-link').click(function(e) {
        $("#login-form").delay(100).fadeIn(100);
        $("#register-form").fadeOut(100);
        $('#register-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
    $('#register-form-link').click(function(e) {
        $("#register-form").delay(100).fadeIn(100);
        $("#login-form").fadeOut(100);
        $('#login-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
});








$.fn.extend({
    treed: function (o) {

        var openedClass = 'glyphicon-minus-sign';
        var closedClass = 'glyphicon-plus-sign';

        if (typeof o != 'undefined'){
            if (typeof o.openedClass != 'undefined'){
                openedClass = o.openedClass;
            }
            if (typeof o.closedClass != 'undefined'){
                closedClass = o.closedClass;
            }
        };

        //initialize each of the top levels
        var tree = $(this);
        tree.addClass("tree");
        tree.find('li').has("ul").each(function () {
            var branch = $(this); //li with children ul
            branch.prepend("<i class='indicator glyphicon " + closedClass + "'></i>");
            branch.addClass('branch');
            branch.on('click', function (e) {
                if (this == e.target) {
                    var icon = $(this).children('i:first');
                    icon.toggleClass(openedClass + " " + closedClass);
                    $(this).children().children().toggle();
                }
            })
            branch.children().children().toggle();
        });
        //fire event from the dynamically added icon
        tree.find('.branch .indicator').each(function(){
            $(this).on('click', function () {
                $(this).closest('li').click();
            });
        });
        //fire event to open branch if the li contains an anchor instead of text
        tree.find('.branch>a').each(function () {
            $(this).on('click', function (e) {
                $(this).closest('li').click();
                e.preventDefault();
            });
        });
        //fire event to open branch if the li contains a button instead of text
        tree.find('.branch>button').each(function () {
            $(this).on('click', function (e) {
                $(this).closest('li').click();
                e.preventDefault();
            });
        });
    }
});

//Initialization of treeviews

$('#tree1').treed();

$('#tree2').treed({openedClass:'glyphicon-folder-open', closedClass:'glyphicon-folder-close'});

$('#tree3').treed({openedClass:'glyphicon-chevron-right', closedClass:'glyphicon-chevron-down'});
