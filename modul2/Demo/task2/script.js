const list = document.getElementById("list");
const pushButton = document.getElementById("push");
const listActivity = document.querySelector(".ff");

pushButton.addEventListener("click", function () {
  const activityText = list.value;

  if (activityText.trim() !== "") {
    const li = document.createElement("li");
    const span = document.createElement("span");
    span.textContent = activityText;

    const editButton = document.createElement("button");
    editButton.textContent = "Edit";
    editButton.classList.add("edit");

    const deleteButton = document.createElement("button");
    deleteButton.textContent = "Hapus";
    deleteButton.classList.add("delete");

    li.appendChild(span);
    li.appendChild(editButton);
    li.appendChild(deleteButton);

    listActivity.appendChild(li);

    list.value = "";
  }
});

listActivity.addEventListener("click", function (e) {
  if (e.target.classList.contains("delete")) {
    e.target.parentElement.remove();
  }

  if (e.target.classList.contains("edit")) {
    const span = e.target.parentElement.querySelector("span");
    const newText = prompt("Edit aktivitas:", span.textContent);
    if (newText !== null) {
      span.textContent = newText;
    }
  }
});
