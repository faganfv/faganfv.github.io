function showNextProject() {
  var projects = document.querySelectorAll(".project");
  var currentProject = document.querySelector(".active-project");
  hideProject(currentProject);

  for(var i=0; i < projects.length; i++) {
    if(projects[i] === currentProject) {
      if(i == projects.length - 1) {
        projects[0].classList.add("active-project");
        projects[0].classList.remove("hidden-project");
      }
      else {
        projects[i+1].classList.add("active-project");
        projects[i+1].classList.remove("hidden-project");
      }
    }
  }
}

function showPreviousProject() {
  var projects = document.querySelectorAll(".project");
  var currentProject = document.querySelector(".active-project");
  hideProject(currentProject);

  for(var i=0; i < projects.length; i++) {
    if(projects[i] === currentProject) {
      if(i == 0) {
        projects[projects.length - 1].classList.add("active-project");
        projects[projects.length - 1].classList.remove("hidden-project");
      }
      else {
        projects[i-1].classList.add("active-project");
        projects[i-1].classList.remove("hidden-project");
      }
    }
  }
}

function hideProject(project) {
  project.classList.add("hidden-project");
  project.classList.remove("active-project");
}
