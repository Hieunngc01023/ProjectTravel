<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="main-search">
		<div class="wrap">
		
			<form id="main-search" method="post" action="#">
				<div class="row">
					<!--column-->
					<div class="column radios one-fourth">
						<h5><span>01</span> Chọn Loại Tìm Kiếm ?</h5>
						<div class="row">
							<div class="f-item one-half">
								<input type="radio" name="radio" id="hotel" value="form1" />
								<label for="hotel">Hotel</label>
							</div>
							<div class="f-item one-half">
								<input type="radio" name="radio" id="flight" value="form3" />
								<label for="flight">Chuyến Bay</label>
							</div>
							<div class="f-item one-half">
								<input type="radio" name="radio" id="cruise" value="form4" />
								<label for="cruise">Chuyến Đi</label>
							</div>
							<div class="f-item one-half">
								<input type="radio" name="radio" id="rentcar" value="form6" />
								<label for="rentcar">Thuê Xe</label>
							</div>
						</div>
					</div>
					<!--//column-->
					
					<div class="three-fourth">
						<!--form hotel-->
						<div class="form row" id="form1">
							<!--column-->
							<div class="column one-third">
								<h5><span>02</span> Chọn Điểm Đến ?</h5>
								<div class="row">
									<div class="f-item full-width">
										<label for="destination1">Chọn Địa Điểm</label>
										<input type="text" placeholder="Thành phố, khu vực, quận huyện" id="destination1" name="destination" />
									</div>
								</div>
							</div>
							<!--//column-->
							
							<!--column-->
							<div class="column  one-third">
								<h5><span>03</span> Chọn Thời Gian ?</h5>
								<div class="row">
									<div class="f-item one-half datepicker">
										<label for="datepicker1">Ngày Nhận Phòng</label>
										<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker1" name="datepicker1" /></div>
									</div>
									<div class="f-item one-half datepicker">
										<label for="datepicker2">Ngày Trả Phòng</label>
										<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker2" name="datepicker2" /></div>
									</div>
								</div>
							</div>
							<!--//column-->
						
							<!--column-->
							<div class="column one-third">
								<h5><span>04</span> Những Ai?</h5>
								<div class="row">
									<div class="f-item one-third spinner">
										<label for="spinner1">Phòng</label>
										<input type="text" id="spinner1" placeholder="Số phòng" name="spinner1" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner2">Người Lớn</label>
										<input type="text"  id="spinner2" placeholder="Số lượng" name="spinner1" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner3">Trẻ Em</label>
										<input type="text" id="spinner3" placeholder="Số lượng" name="spinner1" />
									</div>
								</div>
							</div>
							<!--//column-->
						</div>	
						<!--//form hotel-->

						
						<!--form flight-->
						<div class="form row" id="form3">
							<!--column-->
							<div class="column one-third">
								<h5><span>02</span> Chọn Điểm Đến ?</h5>
								<div class="row">
									<div class="f-item full-width">
										<label for="destination3">Điểm Khởi Hành</label>
										<input type="text" placeholder="Thành phố, khu vực, quận huyện" id="destination3" name="destination" />
									</div>
									<div class="f-item full-width">
										<label for="destination4">Điểm Đến</label>
										<input type="text" placeholder="Thành phố, khu vực, quận huyện" id="destination4" name="destination" />
									</div>
								</div>
							</div>
							<!--//column-->
							
							<!--column-->
							<div class="column one-third">
								<h5><span>03</span> Chọn Thời Gian ?</h5>
								<div class="row">
									<div class="f-item full-width datepicker">
										<label for="datepicker6">Khởi Hành</label>
										<div class="row">
											<div class="f-item one-half">
												<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker6" name="datepicker6" /></div>
											</div>
											<div class="f-item one-half">
												<select>
													<option>Select time</option>
													<option>Lowest fare</option>
													<option>Morning</option>
													<option>Midday</option>
													<option>Afternoon</option>
													<option>Evening</option>
												</select>
											</div>
										</div>
									</div>
									<div class="f-item full-width datepicker">
										<label for="datepicker7">Thời Gian Đến</label>
										<div class="row">
											<div class="f-item one-half">
												<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker7" name="datepicker7" /></div>
											</div>
											<div class="f-item one-half">
												<select>
													<option>Select time</option>
													<option>Lowest fare</option>
													<option>Morning</option>
													<option>Midday</option>
													<option>Afternoon</option>
													<option>Evening</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--//column-->
						
							<!--column-->
							<div class="column one-third">
								<h5><span>04</span> Những Ai?</h5>
								<div class="row">
									<div class="f-item one-third spinner">
										<label for="spinner6">Người Lớn</label>
										<input type="text" placeholder="" id="spinner6" name="spinner6" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner7">Trẻ Nhỏ</label>
										<input type="text" placeholder="" id="spinner7" name="spinner7" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner8">Sơ Sinh</label>
										<input type="text" placeholder="" id="spinner8" name="spinner8" />
									</div>
								</div>
							</div>
							<!--//column-->
						</div>	
						<!--//form flight-->
						
						<!--form cruise-->
						<div class="form row" id="form4">
							<!--column-->
							<div class="column  one-third">
								<h5><span>02</span> Chọn Điểm Đến ?</h5>
								
								<div class="row">
								<div class="f-item full-width">
 										<label>Chọn Điểm Đón</label>
 										<select name="pickUpPlace">
 											<option value="Hà Nội">Hà Nội</option>
 											<option value="Hồ Chí Minh">Hồ Chí Minh</option>											
 										</select>
 									</div>
								
									<div class="f-item full-width">
									
										<label>Chọn Điểm Đến</label>
										<select name = "dropOffPlace">
											<option>Lấy Các điểm điểm Việt nam</option>											
 											<option value="Hà Nội">Hà Nội</option>
 											<option value="Đà Nẵng">Đà Nẵng</option>
 											<option value="Huế">Huế</option>
 											<option value="Hồ Chí Minh">Hồ Chí Minh</option>
 											<option value="Nha Trang">Nha Trang</option>
 											<option value="Ninh Bình">Ninh Bình</option>
 											<option value="Thanh Hoá">Thanh Hoá</option>
 											<option value="Quảng Trị">Quảng Trị</option>
 											<option value="Đà Lạt">Đà Lạt</option>
 											<option value="Phú Quốc">Phú Quốc</option>
 											<option value="Kon Tum">Kon Tum</option>
 											<option value="Băc Ninh">Băc Ninh</option>
 											<option value="Sơn La">Sơn La</option>
 											<option value="Hà Giang">Hà Giang</option>
 											<option value="Lạng Sơn">Lạng Sơn</option>
 											<option value="Hải Phòng">Hải Phòng</option>
 											<option value="Phan Thiết">Phan Thiết</option>
										</select>
									</div>
								</div>
							</div>
							<!--//column-->
							
							<!--column-->
							<div class="column one-third">
								<h5><span>03</span> Thời Gian Đi ?</h5>
								<div class="row">
									<div class="f-item one-half datepicker">
										<label for="datepicker8">Khởi Hành</label>
										<div class="datepicker-wrap">
											<input type="text" placeholder="" id="datepicker8"
												name="datepicker8" />
										</div>
									</div>
									<div class="f-item one-half">
										<label>Số Ngày Đi</label>
										<select name="quantityDate">
											<option value="0" selected="selected">Không</option>
											<option value="1">1-2 </option>
											<option value="5">3-6 Đêm</option>
											<option value="9">7-10 Đêm</option>
											<option value="12">10-14 Đêm</option>
											<option value="14">Over 14 Đêm</option>
										</select>
									</div>
								</div>
							</div>
							<!--//column-->
						
							<!--column-->
							<div class="column one-third">
								<h5><span>04</span> Who?</h5>
								<div class="row">
									<div class="f-item one-third spinner">
										<label for="spinner6">Người Lớn</label>
										<input type="text" placeholder="" id="spinner6" name="spinner6" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner7">Trẻ Nhỏ</label>
										<input type="text" placeholder="" id="spinner7" name="spinner7" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner8">Sơ Sinh</label>
										<input type="text" placeholder="" id="spinner8" name="spinner8" />
									</div>
								</div>
							</div>
							<!--//column-->
						</div>	
						<!--//form cruise-->	
												<!--form rent a car-->
						<div class="form row" id="form6">
							<!--column-->
							<div class="column one-half">
								<h5><span>02</span> Chọn Tên xe ?</h5>
								<div class="row">
									<div class="f-item full-width">
										<label for="destination7">Tìm Kiếm Xe</label>
										<input type="text" placeholder="Tìm Xe Bạn Muốn Thuê" id="destination7" name="title"  />
									</div>
									 
								</div>
							</div>
							<!--//column-->
							
							<!--column-->
							<div class="column one-half">
								<h5><span>03</span>  Kiểu Xe ?</h5>
								<div class="row">
									<div class="f-item full-width">
										<label for="spinner2">Hãng Xe:</label>
										<select name="brand">
											<option value="HonDa"> HonDa </option>
											<option value="Toyota"> Toyota </option>
											<option value="SamSung"> SamSung </option>
											<Option value="SamCo"> SamCo</option>
											<Option value="HuynDai"> HuynDai</option>
											<Option value="Mecedes"> Mecedes</option>
										</select>
									</div>
								</div>
							</div>
							<!--//column-->
						</div>	
						<!--//form rent a car-->
						
						
						<div class="form row" id="form6">
							<!--column-->
							<div class="column one-third">
								<h5><span>02</span> Chọn Điểm Đến ?</h5>
								<div class="row">
									<div class="f-item full-width">
										<label for="destination7">Địa Điểm Lấy Xe</label>
										<input type="text" placeholder="Tôi muốn lấy xe ở ..." id="destination7" name="destination" />
									</div>
									<div class="f-item full-width">
										<label for="destination8">Địa Điểm Trả Xe</label>
										<input type="text" placeholder="Tôi muốn trả xe ở ..." id="destination8" name="destination" />
									</div>
								</div>
							</div>
							<!--//column-->
							
							<!--column-->
							<div class="column one-third">
								<h5><span>03</span> Thời Gian ?</h5>
								<div class="row">
									<div class="f-item full-width datepicker">
										<label for="datepicker11">Thời Gian Lấy Xe</label>
										<div class="row">
											<div class="f-item one-half">
												<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker11" name="datepicker11" /></div>
											</div>
											<div class="f-item one-half">
												<select>
													<option>00:00</option>
													<option>01:00</option>
													<option>02:00</option>
													<option>03:00</option>
													<option>04:00</option>
													<option>05:00</option>
													<option>06:00</option>
													<option>07:00</option>
													<option>08:00</option>
													<option>09:00</option>
													<option selected>10:00</option>
													<option>11:00</option>
													<option>12:00</option>
													<option>13:00</option>
													<option>14:00</option>
													<option>15:00</option>
													<option>16:00</option>
													<option>17:00</option>
													<option>18:00</option>
													<option>19:00</option>
													<option>20:00</option>
													<option>21:00</option>
													<option>22:00</option>
													<option>23:00</option>
												</select>
											</div>
										</div>
									</div>
									<div class="f-item full-width datepicker">
										<label for="datepicker12">Thời Gian Trả</label>
										<div class="row">
											<div class="f-item one-half">
												<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker12" name="datepicker12" /></div>
											</div>
											<div class="f-item one-half">
												<select>
													<option>00:00</option>
													<option>01:00</option>
													<option>02:00</option>
													<option>03:00</option>
													<option>04:00</option>
													<option>05:00</option>
													<option>06:00</option>
													<option>07:00</option>
													<option>08:00</option>
													<option>09:00</option>
													<option selected>10:00</option>
													<option>11:00</option>
													<option>12:00</option>
													<option>13:00</option>
													<option>14:00</option>
													<option>15:00</option>
													<option>16:00</option>
													<option>17:00</option>
													<option>18:00</option>
													<option>19:00</option>
													<option>20:00</option>
													<option>21:00</option>
													<option>22:00</option>
													<option>23:00</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--//column-->
						
							<!--column-->
							<div class="column one-third">
								<h5><span>04</span>  Kiểu Xe ?</h5>
								<div class="row">
									<div class="f-item one-half">
										<label for="spinner2">Loại Xe:</label>
										<select>
											<option> Không có </option>
											<option> Hạnh thường </option>
											<option> Hạng sang </option>
											<Option> Thể Thao </option>
										</select>
									</div>
								</div>
							</div>
							<!--//column-->
						</div>	
						<!--//form rent a car-->
					</div>
					<input type="submit" value="Tìm Kiếm" class="gradient-button search-submit" id="search-submit" name=" "/>
				</div>
			</form>
		</div>
	</div>
