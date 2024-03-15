// var keyword1 = "";
// var contentType = "";

// function GetSelectedKeyValue(keyvalue) {
//     keyword1 = keyvalue;
// }
// function GetSelectedContentValue(contentValue) {
//     contentType = contentType;
// }

async function GetList() {
  const dest = document.querySelector("#dest").value;
  const category = document.querySelector("#category").value;
  let msg = {
    MobileOS: "ETC",
    MobileApp: "MEMORAVEL",
    _type: "json",
    keyword: dest,
    contentTypeId: category,
    serviceKey:
      "%2FMlviVWLHg3CMlVowkHaE22r88s0bKjaRCqhJQaFPIYpPoOCDwwHNisCgD%2FtajMCgNtZ%2BztSkOXFQZKYmWItDw%3D%3D",
  };
  var res = await fetch(
    "http://apis.data.go.kr/B551011/KorService1/searchKeyword1",
    msg
  )
    .then((res) => res.json())
    .then((data) => console.log(data));
}
