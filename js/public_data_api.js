async function GetList(event) {
  console.log("submit 이벤트 핸들링");
  event.preventDefault();

  const text = document.querySelector("#text").value;
  const category = document.querySelector("#category").value;
  const msg = {
    MobileOS: "ETC",
    MobileApp: "MEMORAVEL",
    _type: "json",
    keyword: text,
    contentTypeId: category,
    serviceKey:
      "/MlviVWLHg3CMlVowkHaE22r88s0bKjaRCqhJQaFPIYpPoOCDwwHNisCgD/tajMCgNtZ+ztSkOXFQZKYmWItDw==",
  };
  //   const baseURL = "http://apis.data.go.kr/B551011/KorService1/searchKeyword1";
  //   const queryString = new URLSearchParams(msg).toString(); // url에 쓰기 적합한 querySting으로 return 해준다.
  const requrl =
    "http://apis.data.go.kr/B551011/KorService1/searchKeyword1" +
    "?" +
    new URLSearchParams(msg).toString(); // 완성된 요청 url.
  const resp = await fetch(requrl)
    .then((res) => res.json())
    .then((data) => makeList(data));
}

function makeList(data) {
  let trips = data.response.body.items.item;
  let tripList = ``;
  trips.forEach((area) => {
    tripList += `
    <div class="trip-info-line">
        <div class="trip-info-div">
        <img
            src="../img/wallpaper/phone.png"
            alt=""
            width="100px"
            height="100px"
        />
        <div class="trip-info-text">
            <h5>${area.title}</h5>
            <p>${area.addr1}</p>
        </div>
        </div>
    <button class="trip-info-btn">
      <img
        src="../img/arrow-right.png"
        alt=""
        width="50px"
        height="50px"
      />
    </button>
    </div>
    `;
  });
  document.querySelector(".trip-info").innerHTML = tripList;
}
