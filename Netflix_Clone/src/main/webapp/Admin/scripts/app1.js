const model = document.querySelector('.modelAcc'),
    btnEdit = document.querySelector('.btn-wrench'),
    modelCate = document.querySelector('.modelCate'),
    modelSeason = document.querySelector('.modelSeason'),
    btnAddActor = document.querySelector('.btn-add-Actor'),
    btnAddSeason = document.querySelector('.btn-add-Season'),
    btnAddCate = document.querySelector('.btn-add-Category'),
    body = document.querySelector('body'),
    btnAdd = document.querySelector('.btn-add'),
    actor = document.querySelector('.browActor')
   
    // var ok = (5>3) ? 'b' : 'c'

// editAccount.addEventListener('click', (e) => {
//     if (e.target.closest('.btn-wrench')) {
//         const accountItems = e.target.closest('.btn-wrench').parentElement.parentElement;
//         itemIndex = Array.from(accountItems.parentElement.children).indexOf(accountItems); // assign 
//     }
//     let infoAccount = indexAccount[itemIndex].innerHTML;
//     console.log(infoAccount)
// })


// buttonAdd.addEventListener('click', (e) => {
//     if (validation()) {
//         alert('This name existed');
//     } else {
//         var option = document.createElement("span");
//         var spanText = document.createElement("span");
//         option.setAttribute('value', actor.value);
//         spanText.textContent = actor.value;

//         option.classList.add('tag-Categories', 'peer');
//         spanText.classList.add('badge', 'badge-pill', 'fl-r', 'badge-danger', 'lh-0', 'p-10', 'text-center', 'mt-2', 'mb-2');
//         option.appendChild(spanText);
//         listCategories.appendChild(option);
//     }
// })

// // check value from tag is like value in input
// function validation() {
//     for (let index = 0; index < listTagCategories.length; index++) {
//         if (listTagCategories[index].getAttribute('value') === actor.value) {
//             return true
//         }
//     }
//     return false
// }


btnAddSeason.addEventListener('click', () => {
    modelSeason.classList.add('open');
    body.classList.add('hideScroll');
    let topOffset = window.pageYOffset;
    modelSeason.style.top = topOffset + 'px';
})
btnEdit.addEventListener('click', () => {
    model.classList.add('open');
    body.classList.add('hideScroll');
    let topOffset = window.pageYOffset;
    model.style.top = topOffset + 'px';
})

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
modelCate.addEventListener("click", function(e) {
    if (e.target.classList.contains('modelCate')) {
        modelCate.classList.remove("open");
        body.classList.remove('hideScroll');
    }
});
modelSeason.addEventListener("click", function(e) {
    if (e.target.classList.contains('modelSeason')) {
        modelSeason.classList.remove("open");
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