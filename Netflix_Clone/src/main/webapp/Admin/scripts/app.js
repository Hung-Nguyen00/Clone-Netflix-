const model = document.querySelector('.modelAcc'),
    btnEdit = document.querySelector('.btn-wrench'),
    body = document.querySelector('body'),
    btnAdd = document.querySelector('.btn-add'),
    actor = document.querySelector('.browActor'),
    dataList = document.getElementById('browActor'),
    buttonAdd = document.querySelector('.add-Actor'),
    listCategories = document.getElementById('list-categories')
    // var ok = (5>3) ? 'b' : 'c'


btnAdd.addEventListener('click', () => {
    model.classList.add('open');
    body.classList.add('hideScroll');
    let topOffset = window.pageYOffset;
    model.style.top = topOffset + 'px';
})

model.addEventListener("click", function(e) {
    if (e.target.classList.contains('modelAcc')) {
        model.classList.remove("open");
        body.classList.remove('hideScroll');
    }
});



//https://codepen.io/cferdinandi/pen/gqGbbz

// 1. Create Selection.
// 2. Add event Input
// 3. Take $value from Selection
// 4. Create $tag:  Element and assign $value. It has delete
// use forEach to loop
// 5. If exist Select from $tag. Notice Alert exist.
// 6.