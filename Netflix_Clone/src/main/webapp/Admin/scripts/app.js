const model = document.querySelector('.modelAcc'),
    btnEdit = document.querySelector('.btn-wrench'),
    body = document.querySelector('body'),
    btnAdd = document.querySelector('.btn-add'),
    actor = document.querySelector('.browActor'),
    dataList = document.getElementById('browActor'),
    buttonAdd = document.querySelector('.add-Actor'),
    listCategories = document.getElementById('list-categories'),
    tbody = document.querySelector('tbody'),
    indexAccount = tbody.querySelectorAll('tr'),
    infoAccount = document.querySelectorAll('td'),
    editAccount = tbody.querySelector('.btn-wrench')
    // var ok = (5>3) ? 'b' : 'c'


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



//https://codepen.io/cferdinandi/pen/gqGbbz

// 1. Create Selection.
// 2. Add event Input
// 3. Take $value from Selection
// 4. Create $tag:  Element and assign $value. It has delete
// use forEach to loop
// 5. If exist Select from $tag. Notice Alert exist.
// 6.