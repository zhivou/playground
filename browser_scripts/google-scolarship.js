// Use me to retrive all sitations from google scholar website.
// Use txt to adjust data shape for carrd table.
(() => {
    let result = [];
    $$(".gsc_a_tr").map((el) => {
      const titleLink = el.querySelector(".gsc_a_t a");
      const title = (`[${titleLink.innerText}](${titleLink.href})` + '\n' + `~${el.querySelectorAll(".gs_gray")[0].innerText}~` + '\n' + `~${el.querySelectorAll(".gs_gray")[1].innerText}~`);
      const citedLink = el.querySelector(".gsc_a_c a");
      const cited = (`[${citedLink.innerText}](${citedLink.href})`);
      const year = el.querySelector(".gsc_a_y").innerText;
  
      result.push({
        title,
        cited,
        year,
      });
    });
    copy(result);
    return result;
  })();