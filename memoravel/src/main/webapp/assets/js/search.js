/**
 * 
 */
const root = "http://localhost:8080/memoravel";
async function getAttractionList(event) {
	event.preventDefault();	//form태그의 원래 기능 막기
	console.log("정보 조회 요청")

	const dongCode = document.getElementById("dong").value;
	//서버로부터 아파트정보 얻어오기
	const url = `${root}/house?action=houseInfoList&dongCode=${dongCode}`;
	const resp = await fetch(url);
	const apartInfoList = await resp.json();
	console.log("조회한 동 정보: ", apartInfoList);

	//<tr> 태그 만들기
	const tbody = document.querySelector("#apart-list>tbody");
	tbody.innerHTML = "";
	for (let apartInfo of apartInfoList) {
		tbody.innerHTML += `
		<tr>
			<td>${apartInfo.apartmentName}</td>
			<td>${apartInfo.lng}</td>
			<td>${apartInfo.lat}</td>
		</tr>
		`;
	}
}