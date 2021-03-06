
import {encodeForAjax, sendAjaxGetRequest} from './common.js';
import {mdRemove} from './removeMD.js';

function sendAdvancedSearchRequest(page = 1) {
    let searchInput = searchBar.querySelector("input[type='search']").value;
    let filter = document.querySelector("#order-filters li input:checked");

    let courses = JSON.stringify([...document.querySelectorAll(".course-filter-input:checked")].map(course => course.value));
    let tags = JSON.stringify([...document.querySelectorAll('.selected-tag')].map(tag => tag.getAttribute('data-tag-id')));

    let data = {
        'page': page,
        'search-input': searchInput,
        'filter': filter.value,
        'courses': courses,
        'tags': tags
    };

    sendAjaxGetRequest('api/search', data, searchUpdateHandler);

    let url = 'search?' + encodeForAjax(data)
    window.history.pushState({}, '', url);
}

function searchUpdateHandler(){

    if (this.status != 200) window.location = '/search';
    let response = JSON.parse(this.responseText);

    window.scroll({top: 0, behavior: 'smooth'});
    questionsDiv.innerHTML = response.html;

    mdRemove();
    updatePagination();
}

function sendSearchTagsRequest() {
    sendAjaxGetRequest('/api/search/tag', {'tag-input': tagsInput.value}, tagsUpdateHandler);
}

function getTagByIdRequest(badge) {
    sendAjaxGetRequest('/api/search/tag/' + badge.getAttribute('data-tag-id'), null,
        function(){
            let response = JSON.parse(this.responseText);
            badge.innerHTML = response.name + badge.innerHTML;
        });
}

function tagsUpdateHandler(){
    let response = JSON.parse(this.responseText);
    tagsSearchResults.innerHTML = "";

    if(response.tags.length != 0){
        tagsSearchResults.style.display = "block";
    } else tagsSearchResults.style.display = "none";

    for(let tag of response.tags){
        // Tag label
        let newTagLabel = document.createElement('label');
        newTagLabel.setAttribute('for', `tag-filter-${tag.id}`);
        newTagLabel.classList.add('list-group-item', 'tag-filter');
        newTagLabel.innerHTML = tag.name;

        // Tag Input
        let newTag = document.createElement('input');
        newTag.setAttribute('type', 'checkbox');
        newTag.setAttribute('hidden', true);
        newTag.setAttribute('id', `tag-filter-${tag.id}`);
        newTag.classList.add('tag-filter-input');
        newTag.value = tag.id;

        tagsSearchResults.append(newTag);
        tagsSearchResults.append(newTagLabel);

        newTag.addEventListener('click', tagSelect);
    }
}

function tagSelect(){

    let allSelected = document.querySelectorAll('.selected-tag');

    for(let tag of allSelected){
        if(tag.getAttribute('data-tag-id') == this.value){
            tagsInput.value='';
            tagsSearchResults.style.display = "none";
            return;
        }
    }

    // Tag Badge
    let tagBadge = document.createElement('span');
    tagBadge.classList.add('badge','bg-primary','selected-tag', 'ms-2');

    tagBadge.setAttribute('data-tag-id', this.value);
    tagBadge.innerHTML = `${this.nextSibling.innerHTML}<i class="fas fa-times"></i>`;

    tagsSelected.appendChild(tagBadge);

    tagBadge.addEventListener('click', function(){
        this.remove();
        sendAdvancedSearchRequest();
        updateResetBtn();
    });

    tagsInput.value='';
    tagsSearchResults.innerHTML='';
    tagsSearchResults.style.display = 'none';

    sendAdvancedSearchRequest();
    updateResetBtn();
}


function toggleDropdown(){
    if(coursesDropdown.style.display == "block"){
        coursesDropdown.style.display = "none";
    } else {
        coursesDropdown.style.display = "block";
    }
}

function toggleMobileFilters(){
    if(mobileFilters.style.display == "block"){
        mobileFilters.style.display = "none";
        document.querySelector('#mobile-search-filters button:first-child').style.display = "block";
        document.querySelector('#mobile-search-filters button:last-child').style.display = "none";
    } else {
        mobileFilters.style.display = "block";
        document.querySelector('#mobile-search-filters button:first-child').style.display = "none";
        document.querySelector('#mobile-search-filters button:last-child').style.display = "block";
    }
}

// Search Page

let searchPage = document.getElementById('search-page');
let searchBarBtn = document.querySelector('button[name="search-submit"]');
let searchBar = document.getElementById('questions-search-bar');
let searchFilters = document.querySelectorAll('#order-filters li input');
let resetSearchBtn = document.getElementsByClassName('reset-search')[0];
let questionsDiv = document.querySelector('#search-page .question-search-results');

let courseFilters = document.querySelectorAll(".course-filter-input");
let coursesDropdown = document.getElementById('courses-dropdown-list');
let coursesDropdownToggle =  document.getElementById('courses-dropdown');

let tagsInput = document.querySelector('input[name="tag-input"]');
let tagsSearchResults = document.getElementById('tags-search-results');
let tagsSelected = document.getElementById('tags-selected');

let mobileFilters = document.querySelector('#questions-search-bar .navbar');
let mobileFiltersToggle = document.getElementById('mobile-search-filters');

if(searchPage){
    // Text Search
    searchBarBtn.addEventListener('click', function(event){
        event.preventDefault();
        if(searchBar.querySelector("input[type='search']").value == '') return;

        searchFilters[0].parentElement.hidden = false;
        searchFilters[0].checked = true;
        sendAdvancedSearchRequest();

        updateResetBtn();
    });

    // Order
    searchFilters.forEach(searchFilter => {
        searchFilter.addEventListener('click',
            function() {
                updateResetBtn();
                sendAdvancedSearchRequest()
            });});


    // Courses
    courseFilters.forEach(courseFilter => {
        courseFilter.addEventListener('click', function() {
            let coursesSelected = document.querySelectorAll(".course-filter-input:checked").length;
            coursesDropdownToggle.innerHTML = coursesSelected + ' selected';

            updateResetBtn();
            sendAdvancedSearchRequest();
        });});

    coursesDropdownToggle.addEventListener('click', toggleDropdown);

    // Pagination
    updatePagination();

    // Tags Search
    tagsInput.addEventListener('keyup',
        function(){

            if(tagsInput.value == ''){
                tagsSearchResults.innerHTML = "";
                tagsSearchResults.style.display = "none";
                return;
            }

            sendSearchTagsRequest();
        });

    let tagBadges = document.querySelectorAll('.selected-tag');
    tagBadges.forEach(badge => {
        getTagByIdRequest(badge);
        badge.addEventListener('click', function(){
            this.remove();
            sendAdvancedSearchRequest();
            updateResetBtn();
        });
    })

    mobileFiltersToggle.addEventListener('click', toggleMobileFilters);

    // Reset Search Button
    updateResetBtn();
}

function updateResetBtn(){
    let coursesSelected = document.querySelectorAll(".course-filter-input:checked").length;
    let tagBadges = document.querySelectorAll('.selected-tag').length;
    let filter = document.querySelector("#order-filters li input:checked");
    let textInput = searchBar.querySelector("input[type='search']");

    if(coursesSelected == 0 && tagBadges == 0 && textInput.value == '' && filter.value == 'new' ){
        resetSearchBtn.classList.remove('d-block');
        resetSearchBtn.classList.add('d-none');
    } else {
        resetSearchBtn.classList.add('d-block');
        resetSearchBtn.classList.remove('d-none');
    }
}

function searchPagination(event) {
    event.preventDefault();
    let page = this.href.split('page=')[1]
    sendAdvancedSearchRequest(page);
}

function updatePagination() {
    document.querySelectorAll('.pagination a').forEach(
        paginationLink => { paginationLink.addEventListener('click', searchPagination);});
}

// Main search bar
let mainSearch = document.querySelector('.main-search');
mainSearch.addEventListener('submit', function(event){
    event.preventDefault();
    if(mainSearch.children[0].value == '')
        mainSearch.children[1].value = 'new';

    mainSearch.submit();
});
