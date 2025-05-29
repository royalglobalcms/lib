const SimpleEditor = (() => {
  function createToolbar() {
    const toolbar = document.createElement('div');
    toolbar.className = 'textEditor-toolbar';
    toolbar.innerHTML = `
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-bold.svg" data-cmd="bold">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-underline.svg" data-cmd="underline">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-italic.svg" data-cmd="italic">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-seperate.svg">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-align-left.svg" data-cmd="justifyLeft">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-align-center.svg" data-cmd="justifyCenter">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-align-right.svg" data-cmd="justifyRight">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-align-justify.svg" data-cmd="justifyFull">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-seperate.svg">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-horizontal-rule.svg" data-cmd="insertHorizontalRule">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-seperate.svg">

      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/text-color.svg" class="color-btn">
      <input type="color" class="color-picker" hidden>

      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/highlight-bg-color.svg" class="bgcolor-btn">
      <input type="color" class="bgcolor-picker" hidden>

      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-seperate.svg">
  
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/list-bull-disc.svg" data-cmd="insertUnorderedList">   
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-list-num-default.svg" data-cmd="insertOrderedList">
  
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-seperate.svg">
      <select class="font-size">
        ${[...Array(7)].map((_, i) =>
          `<option value="${i + 1}" ${i === 2 ? "selected" : ""}>Size ${i + 1}</option>`
        ).join('')}
      </select>
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-seperate.svg">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-image.svg" class="insert-image">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-link.svg" class="insert-link">
 
 
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-seperate.svg">
      <img src="https://cdn.jsdelivr.net/gh/royalglobalcms/lib/formEditor/icon/icon-sourcecode.svg" class="toggle-source">
    `;
    return toolbar;
  }

  function setupEditor(editor, position = 'top') {
    let isSourceMode = false;
    editor.setAttribute('contenteditable', true);

    const toolbar = createToolbar();
    if (position === 'bottom') {
      editor.parentNode.insertBefore(toolbar, editor.nextSibling);
    } else {
      editor.parentNode.insertBefore(toolbar, editor);
    }

    toolbar.querySelectorAll('[data-cmd]').forEach(btn => {
      btn.onclick = () => document.execCommand(btn.dataset.cmd, false, null);
    });

    toolbar.querySelector('.color-btn').onclick = () =>
      toolbar.querySelector('.color-picker').click();
    toolbar.querySelector('.color-picker').onchange = e =>
      document.execCommand('foreColor', false, e.target.value);

    toolbar.querySelector('.bgcolor-btn').onclick = () =>
      toolbar.querySelector('.bgcolor-picker').click();
    toolbar.querySelector('.bgcolor-picker').onchange = e =>
      document.execCommand('hiliteColor', false, e.target.value);

    toolbar.querySelector('.font-size').onchange = e =>
      document.execCommand('fontSize', false, e.target.value);

    toolbar.querySelector('.insert-image').onclick = () => {
      const url = prompt("Enter image URL:");
      if (url) document.execCommand('insertImage', false, url);
    };

    toolbar.querySelector('.insert-link').onclick = () => {
      const url = prompt("Enter URL:");
      if (url) {
        document.execCommand("createLink", false, url);
      }
    };

  

    toolbar.querySelector('.toggle-source').onclick = () => {
      if (isSourceMode) {
        editor.innerHTML = editor.textContent;
        editor.classList.remove("textEditor-source-mode");
      } else {
        editor.textContent = editor.innerHTML;
        editor.classList.add("textEditor-source-mode");
      }
      isSourceMode = !isSourceMode;
    };
  }

function initAll(options = {}) {
  const position = options.toolbarPosition || 'top';
  document.querySelectorAll('.textEditor').forEach(editor => {
    if (!editor.dataset.initialized) {
      setupEditor(editor, position);
      editor.dataset.initialized = "true";
    }
  });
}

  return { initAll };
})();
  
