const root = "http://localhost:8080/memoravel";
async function getAttractionList(event) {
	event.preventDefault();	//form태그의 원래 기능 막기
	console.log("정보 조회 요청")

	const dest = document.getElementById("dest").value;
	const contentType = document.getElementById("category").value;
	const keyword = document.getElementById("text").value;
	//서버로부터 아파트정보 얻어오기;
	const url = `${root}/search?action=searchMkplan&dest=${dest == null ? "" : dest}&contentType=${contentType == null ? "" : contentType}&keyword=${keyword == null ? "" : keyword}`;
	const resp = await fetch(url);
	const attractionList = await resp.json();
	console.log("조회한 관광지 정보: ", attractionList);

	//<tr> 태그 만들기
	const tbody = document.querySelector(".trip-info");
	tbody.innerHTML = "";
	for (let attraction of attractionList) {
		if (attraction.first_image == null) {
			tbody.innerHTML += `
			<div class="trip-info-line">
				<div class="trip-info-div">
					<img src="${attraction.first_image2}" alt="이미지 없음"
						width="100px" height="100px" />
					<div class="trip-info-text">
						<h5>${attraction.title}</h5>
						<p>${attraction.addr1}</p>
					</div>
				</div>
				<div>
					<button class="trip-info-btn">
						<img src="./assets/img/plus.png" alt="" width="30px"
							height="30px" />
					</button>
					<button class="trip-info-btn"
						onClick="location.href='/memoravel/search?action=detail&id=${attraction.content_id}'">
						<img src="./assets/img/arrow-right.png" alt="" width="40px"
							height="40px" />
					</button>
				</div>
			</div>
			`;

		} else {
			tbody.innerHTML += `
				<div class="trip-info-line">
					<div class="trip-info-div">
						<img src="${attraction.first_image2}" alt="이미지 없음"
							width="100px" height="100px" />
						<div class="trip-info-text">
							<h5>${attraction.title}</h5>
							<p>${attraction.addr1}</p>
						</div>
					</div>
					<div>
						<button class="trip-info-btn">
							<img src="./assets/img/plus.png" alt="" width="30px"
								height="30px" />
						</button>
						<button class="trip-info-btn"
							onClick="location.href='/memoravel/search?action=detail&id=${attraction.content_id}'">
							<img src="./assets/img/arrow-right.png" alt="" width="40px"
								height="40px" />
						</button>
					</div>
				</div>
				`;	
		}
	}
}