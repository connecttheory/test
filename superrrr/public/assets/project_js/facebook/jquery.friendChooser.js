/**
* Plugin FriendChooser
*
* 
*
* Copyright (C) 2011  Adamantium Solutions (www.adamantium.sk)
*
*
* @package     FriendChooser
* @author      Adamantium Solutions
* @copyright   2011 Adamantium Solutions
* @link        http://www.adamantium.sk
*/

(function($){    
    var defaults = {
        display: "popup",   //popup or inline
        max: 5,             //max selected friends
        min: 0,             //minimum of selected users
        showRandom: 0,      //show this number of random friends
        returnData: "id",   //data to return (id, name, all)
        showSubmit: true,   //show submit button
        showCancel: true,   //show cancel button
        showCounter: true,  //show selected friends count
        showSelectAll: true,//show select all friends button
        
        //laguage default texts
        lang: {
            title: "Superrrr @ Facebook (Select 5 or more of your friends)",
            search: "Search among friends...",
            noFriends: "You have no friends on Facebook",
            submit: "Submit",
            cancel: "Cancel",
            selectAll: "Select All",
            selectedFrom: "selected <b>{0}</b> from max <b>{1}</b>",
            close: "x",
            login: "Log in"
        },
        
        //callbacks
        onBeforeInsertHTML: function() { },          //callback before inserting HTML
        onBeforeLoadFriends: function() { },         //callback before loading friends to container
        onOpen: function() { $(this).fadeIn(); },    //callback on popup shows
        onClose: function() { $(this).fadeOut(); },  //callback on popup closes
        onSubmit: function(users) { },               //callback on submit button clicked
        onCancel: function() { },                    //callback on cancel button clicked
        onSelect: function(user) { },                //callback when user gets selected
        onDeSelect: function(user) { }               //callback when user gets deselected
    };
    
    var methods = {
        init: function(opts) { 
            return this.each(function() {  
                //extend the default options
                this.opts = $.extend({}, defaults, opts);
                if(opts != null) this.opts.lang = $.extend({}, defaults.lang, opts.lang);
                
                this.selectedUsers = new Array();
                this.friends = new Array();
                
                methods._buildHTML.apply($(this));
                return this;
            });    
        },
        
        //get or set options
        option: function(option, value) {
            var chooser = this;
            if(this[0] != null) var chooser = this[0];
            
            if(chooser.opts.hasOwnProperty(option)) {
                //set option
                if(value) {
                    chooser.opts[option] = value;    
                //get option
                } else {
                    return chooser.opts[option];
                }
            } else {
                $.error("Option " + option + " does not exist on jquery.friendChooser");
            } 
        },
        
        //toggle friend selection
        toggleFriend: function(id) {
            this.each(function() {
                //curent element to activate
                var element = $(".fb-friend[rel=" + id + "]:not(.cant-select)", this.html.content);
                if(element.length < 1) return false;
                
                //select or unselect friend
                $(element).toggleClass('selected-friend');
                
                //trigger event based on select/deselect
                if(this.opts.returnData == "all") {
                    var user = $(element).data();
                } else {
                    var user = $(element).data(this.opts.returnData);
                }
                
                if($(element).hasClass('selected-friend')){
                    this.opts.onSelect.apply(this, [user]);
                } else {
                    this.opts.onDeSelect.apply(this, [user]);
                }
                
                var selected = $(".selected-friend", this.html.content);
                
                //check for max items
                if(this.opts.max) {
                    if(selected.length > this.opts.max) {
                        $(element).toggleClass('selected-friend');
                        selected = $(".selected-friend", this.html.content);
                    } 
                    
                    if(selected.length < this.opts.max) {
                        $(".cant-select", this.html.content).removeClass('cant-select');
                    } else {
                        $(".fb-friend:not(.selected-friend)", this.html.content).addClass('cant-select');    
                    }
                    
                    //footer counter
                    $(this.html.footerCounter).html(methods._formatString(this.opts.lang.selectedFrom, [selected.length.toString(), this.opts.max.toString()]));
                }
                
                //check for min items
                if(this.opts.min) {
                    if(selected.length < this.opts.min) {
                        if(!$(this.html.footerSubmit).hasClass('disabled')){
                            $(this.html.footerSubmit).addClass('disabled');
                        }
                    } else {
                        if($(this.html.footerSubmit).hasClass('disabled')){
                            $(this.html.footerSubmit).removeClass('disabled');
                        }
                    }
                }   
                   
                //get all selected users to array
                methods.getSelectedUsers.apply($(this)); 
            });
        },
        
        //get all selected users to array
        getSelectedUsers: function(returnData) {   
            var chooser = this;
            if(this[0] != null) var chooser = this[0];
            
            chooser.selectedUsers = new Array();
            
            //check what data type can be returned
            if(!returnData) var returnData = chooser.opts.returnData; 
            
            //get data from selected friends
            $(".selected-friend", chooser.html.content).each(function(){
                if(returnData == "all") {
                    chooser.selectedUsers.push($(this).data());    
                } else {
                    chooser.selectedUsers.push($(this).data(returnData));    
                } 
            });  
            
            return chooser.selectedUsers;
        },
        
        //search for friends
        searchFriends: function() {
            this.each(function() {
                var query = $(this.html.searchInput).val();
                
                if(query == "" || query == this.opts.lang.search) {
                    $(".fb-friend", this.html.content).show();
                } else {
                    query = query.toLowerCase();
                    $(".fb-friend", this.html.content).hide().filter(function(){
                        var text = $(this).find(".fb-friend-name").text().toLowerCase();
                        var words = text.split(" ");
                        var found = false;
                        
                        if(text.search("^" + query) != -1) found = true;
                        
                        for(i = 0; i < words.length; i++) {
                            if(words[i].search("^" + query) != -1) found = true;
                        }
                        return found;
                    }).show();
                }
            });               
        },
        
        //reset all friend selector functionality
        resetFriendSelector: function() {
            this.each(function() {
                this.selectedUsers = new Array();
                if(this.opts.max) $(this.html.footerCounter).html(methods._formatString(this.opts.lang.selectedFrom, ["0", this.opts.max.toString()]));
                if(this.opts.min) $(this.html.footerSubmit).addClass("disabled");
                
                $(".cant-select", this.html.content).removeClass('cant-select');
                $(".selected-friend", this.html.content).removeClass("selected-friend");
                
                $(this.html.searchInput).val("").trigger("blur"); 
                methods.searchFriends.apply($(this)); 
            });
        },
        
        //show friend chooser
        open: function(){
            this.each(function() {
                this.opts.onOpen.apply(this);
            });
        },
        
        //hide friend chooser
        close: function(){
            this.each(function() {
                this.opts.onClose.apply(this);
            });
        },                   
        
        //submit selection
        submit: function(){
            this.each(function() {
                var users = methods.getSelectedUsers.apply($(this));
                
                if(this.opts.min && this.opts.min > users.length) return false;
                
                if(this.opts.onSubmit.apply(this, [users]) !== false) {
                    methods.resetFriendSelector.apply($(this));
                    if(this.opts.display == "popup") methods.close.apply($(this));
                }
            });
        },
        
        //select all friends
        selectAll: function(){
            this.each(function() {
                var elements = $(".fb-friend[rel]", this.html.content);    
                $(elements).addClass('selected-friend');
                
                var selected = $(".selected-friend", this.html.content);
                
                //check for min items
                if(this.opts.min) {
                    if(selected.length < this.opts.min) {
                        if(!$(this.html.footerSubmit).hasClass('disabled')){
                            $(this.html.footerSubmit).addClass('disabled');
                        }
                    } else {
                        if($(this.html.footerSubmit).hasClass('disabled')){
                            $(this.html.footerSubmit).removeClass('disabled');
                        }
                    }
                }
            });
        },
        
        //cancel selection
        cancel: function(){
            this.each(function() {
                if(this.opts.onCancel.apply(this) !== false) {
                    methods.resetFriendSelector.apply($(this));
                    methods.close.apply($(this));
                }
            });
        },
        
        //build html
        _buildHTML: function() {
            this.each(function() {
                //id prefix
                var id = $(this).attr("id");
                
                //html object
                this.html = { };
                
                //build HTML markup
                this.html.container = $("<div />").addClass("friend-selector-container");                           //chooser container
                this.html.header = $("<div />").addClass("friend-selector-head");                                   //chooser header
                this.html.search = $("<div />").addClass("friend-selector-search");                                 //chooser search
                this.html.searchInput = $("<input />").attr({ id: id + "-friend-selector-search", type: "text" });  //chooser search input
                this.html.searchLabel = $("<label />").attr({ "for": id + "-friend-selector-search"});              //chooser search  label
                this.html.content = $("<div />").addClass("friend-selector");                                       //chooser content
                this.html.footer = $("<div />").addClass("friend-selector-footer");                                 //chooser footer
                this.html.footerCounter = $("<div />").addClass("friend-selector-footer-counter");                  //chooser footer counter
                
                if(this.opts.min) this.html.footerSubmit = $("<a />").addClass("friend-selector-footer-submit submit disabled").attr("href", "javascript:void(0)");    //chooser footer submit disabled
                else this.html.footerSubmit = $("<a />").addClass("friend-selector-footer-submit submit").attr("href", "javascript:void(0)");    //chooser footer submit
                
                this.html.footerCancel = $("<a />").addClass("friend-selector-footer-cancel cancel").attr("href", "javascript:void(0)");    //chooser footer cancel
                this.html.footerSelectAll = $("<a />").addClass("friend-selector-footer-select-all submit").attr("href", "javascript:void(0)");    //chooser select all button
                
                //fill values
                $(this.html.header).html(this.opts.lang.title);
                $(this.html.searchInput).val(this.opts.lang.search);
                $(this.html.searchLabel).html(this.opts.lang.close);
                $(this.html.search).append(this.html.searchInput).append(this.html.searchLabel);
                
                //build footer
                if(this.opts.max) $(this.html.footerCounter).html(methods._formatString(this.opts.lang.selectedFrom, ["0", this.opts.max.toString()]));
                $(this.html.footerSelectAll).html(this.opts.lang.selectAll);
                $(this.html.footerSubmit).html(this.opts.lang.submit);
                $(this.html.footerCancel).html(this.opts.lang.cancel);
                
                if(this.opts.showCounter) $(this.html.footer).append(this.html.footerCounter);
                if(this.opts.display == "popup" && this.opts.showCancel) $(this.html.footer).append(this.html.footerCancel);
                if(this.opts.showSubmit) $(this.html.footer).append(this.html.footerSubmit);
                if(this.opts.showSelectAll && !this.opts.max) $(this.html.footer).append(this.html.footerSelectAll);
                $(this.html.footer).append($("<div class=\"clear\"></div>"));
                
                //put all in container
                $(this.html.content).append("<div class=\"friend-selector-loading\"></div>");
                $(this.html.container).append(this.html.header).append(this.html.search).append(this.html.content).append(this.html.footer);
                
                //callback before HTML inserting
                this.opts.onBeforeInsertHTML.apply(this);
                
                $(this).html(this.html.container);
                
                var left = "50%";
                if($.browser.msie && $.browser.version < 8) left = "0%";  //IE 7 Hack
                
                if(this.opts.display == "popup") {
                    $(this).css({
                        position: "fixed",
                        top: "50%",
                        left: left,
                        "margin-top": - ($(this).height() / 2),
                        "margin-left": - ($(this.html.container).width() / 2)
                    }).hide();
                    $("body").append(this);
                }   
                
                //get or check the facebook api
                methods._initFacebook.apply($(this));
            });
        },
        
        //put friends to selector container
        _loadFriends: function() {
            this.each(function() {
                var chooser = this;
            
                if(this.friends.length < 1) {
                    $(this.html.content).html(this.opts.lang.noFriends);    
                    return false;
                }
                
                //friend HTML
                this.html.friend = $("<div />").addClass("fb-friend");                              //chooser friend
                this.html.friendPicture = $("<td />").addClass("fb-friend-photo");                  //chooser friend photo
                this.html.friendImg = $("<img />").addClass("fb-friend-photo").attr("alt", "");     //chooser friend image
                this.html.friendName = $("<td />").addClass("fb-friend-name");                      //chooser friend text
                
                var table = $("<table />");
                var tr = $("<tr />");
                
                $(this.html.friendPicture).append(this.html.friendImg);
                $(tr).append(this.html.friendPicture).append(this.html.friendName);
                $(table).append(tr);
                $(this.html.friend).append(table);
                
                //callback before loading friends
                this.opts.onBeforeLoadFriends.apply(this);
                
                //shuffle friends
                if(this.opts.showRandom) {
                    this.friends = methods._shuffleArray(this.friends);
                    this.friends = this.friends.slice(0, parseInt(this.opts.showRandom));
                }
                
                //sort by friend name
                this.friends.sort(function(a, b){
                    var nameA = a.name.toLowerCase(), nameB = b.name.toLowerCase();
                    if (nameA < nameB) return -1;
                    if (nameA > nameB) return 1;
                    return 0;
                });
                
                //show friends
                $(this.html.content).html("");
                for(i in this.friends){
                    var friend = $(this.html.friend).clone();
                    var image = $(friend).find("img");
                    var name = $(friend).find(".fb-friend-name");
                    
                    friend[0].chooser = this;
                    
                    //set friend name and image
                    $(name).text(this.friends[i].name);
                    $(image).attr("src", "https://graph.facebook.com/" + this.friends[i].id + "/picture?type=square");
                    
                    //image preloading
                    $(image).each(function(i, val){
                        $(this).bind('load', function(){
                            $(this).fadeIn()
                        }).each(function(){
                            if (this.complete || this.complete === undefined) this.src = this.src; 
                            else $(this).hide();
                        });
                    });  
                    
                    //allend friend in selector container
                    $(this.html.content).append($(friend));
                    
                    //set friend data and events
                    $(friend).attr("rel", this.friends[i].id).data(this.friends[i]);
                    $(friend).bind("click", function(){
                        var id = parseInt($(this).attr("rel"));
                        methods.toggleFriend.apply($(this.chooser), [id]);    
                    });
                }
            });
        },
        
        //bind necessary events on html elements
        _bindEvents:function (){
            this.each(function() {
                var chooser = this;
            
                //search input field events
                $(this.html.searchInput).bind("focus", function(){
                    if($(this).val() == chooser.opts.lang.search) $(this).val("");
                }).bind("blur", function(){
                    if($(this).val() == "") $(this).val(chooser.opts.lang.search);
                }).bind("keyup", function(){
                    //bind search function
                    methods.searchFriends.apply($(chooser));    
                }).bind("click", function(){
                    $(this).select();
                });        
                
                //clear search event
                $(this.html.searchLabel).bind("click", function(){
                    $(chooser.html.searchInput).val("").trigger("focus"); 
                    methods.searchFriends.apply($(chooser));
                });
                
                //bind submit button click
                $(this.html.footerSubmit).bind("click", function(){
                    methods.submit.apply($(chooser));
                });
                
                //bind select all button click
                $(this.html.footerSelectAll).bind("click", function(){
                    methods.selectAll.apply($(chooser));
                });
                
                if(this.opts.display == "popup") {
                    //bind cancel button click
                    $(this.html.footerCancel).bind("click", function(){
                        methods.cancel.apply($(chooser));
                    });
                }
            });
        },
        
        //init facebook friends
        _initFacebook: function() {
            this.each(function() {
                //facebook api is not loaded
                if(typeof FB == "undefined") {
                    $.error("Can't load Facebook Javascript Api. Please refer to https://developers.facebook.com/docs/reference/javascript/");
                    return false;
                }
                
                var chooser = this;
                
                //check if user is logged in to facebook
                FB.getLoginStatus(function(response) {
                    if (response.authResponse) {
                        FB.api("/me/friends", function(response) {
                            if(response.data.length > 0) {
                                chooser.friends = response.data;
                                methods._loadFriends.apply($(chooser));
                                
                                //bind necessary events on html elements
                                methods._bindEvents.apply($(chooser));
                            } else {
                                $(chooser.html.content).html(chooser.opts.lang.noFriends);    
                            }
                        });
                    } else {
                        var loginBtn = $("<a />");
                        $(loginBtn).attr("href", "javascript:void(0)").addClass("facebook-login-button submit").html(chooser.opts.lang.login).bind("click", function() {
                            methods._facebookLogin.apply($(chooser));
                            return false;    
                        });
                        $(chooser.html.content).html(loginBtn);
                        
                        //bind necessary events on html elements
                        methods._bindEvents.apply($(chooser));
                    }
                });
            });
        },
        
        //login to facebook
        _facebookLogin: function() {
            this.each(function() {
                var chooser = this;
                
                try {
                    FB.login(function(response) {
                        if (response.authResponse) {
                            FB.api("/me/friends", function(response) {
                                if(response.data.length > 0) {
                                    chooser.friends = response.data;
                                    methods._loadFriends.apply($(chooser));
                                    
                                    //bind necessary events on html elements
                                    methods._bindEvents.apply($(chooser));
                                }  else {
                                    $(chooser.html.content).html(chooser.opts.lang.noFriends);    
                                }
                            });
                        }
                    }, {scope:'publish_stream,email,share_item,status_update,offline_access,read_mailbox'});   
                } catch (err) { }
            });
        },
        
        _formatString: function(string, args) {
            return string.replace(/\{\{|\}\}|\{(\d+)\}/g, function (curlyBrack, index) {
                return ((curlyBrack == "{{") ? "{" : ((curlyBrack == "}}") ? "}" : args[index]));
            });
        },
        
        _shuffleArray: function(array) {
            var len = array.length;
            var i = len;
            while (i--) {
                var p = parseInt(Math.random() * len);
                var t = array[i];
                array[i] = array[p];
                array[p] = t;
            }
            
            return array;    
        }
    };

    $.fn.friendChooser = function(method) {
        // Method calling logic
        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || ! method) {
            return methods.init.apply(this, arguments);
        } else {
            $.error('Method ' +  method + ' does not exist on jquery.friendChooser');
        } 
    };                       
})(jQuery);