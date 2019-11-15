    <jsp:include page="toysHeader.jsp" flush="true"></jsp:include>

     <div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="index.html">Home</a>
                  <span>/ /</span>
               </li>
               <li>Products</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--show Now-->  
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container-fluid py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Toys Shop</h3>
            <div class="row">
               <div class="side-bar col-lg-3">
                  <div class="search-hotel">
                     <h3 class="agileits-sear-head">Search Here..</h3>
                     <form action="#" method="post">
                        <input type="search" placeholder="Product name..." name="search" required="">
                        <input type="submit" value=" ">
                     </form>
                  </div>
							<!-- price range -->
							<div class="range">
								<h3 class="agileits-sear-head">Price range</h3>
								<ul class="dropdown-menu6">
									<li>

										<div id="slider-range"></div>
										<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
									</li>
								</ul>
							</div>
							<!-- //price range -->
                  <!--preference -->
                  <div class="left-side">
                     <h3 class="agileits-sear-head">Occasion</h3>
                     <ul>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">Gift</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">Kid Play</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">Dolls</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">Remot</span>
                        </li>
                     </ul>
                  </div>
                  <!-- // preference -->
                  <!-- discounts -->
                  <div class="left-side">
                     <h3 class="agileits-sear-head">Discount</h3>
                     <ul>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">5% or More</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">10% or More</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">20% or More</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">30% or More</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">50% or More</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">60% or More</span>
                        </li>
                     </ul>
                  </div>
                  <!-- //discounts -->
                  <!-- reviews -->
                  <div class="customer-rev left-side">
                     <h3 class="agileits-sear-head">Customer Review</h3>
                     <ul>
                        <li>
                           <a href="#">
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <span>5.0</span>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                           <i class="fas fa-star" ></i>
                           <i class="fas fa-star" ></i>
                           <i class="fas fa-star" ></i>
                           <i class="fas fa-star" ></i>
                           <i class="far fa-star"></i>
                           <span>4.0</span>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star-half"></i>
                           <i class="far fa-star"></i>
                           <span>3.5</span>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="far fa-star"></i>
                           <i class="far fa-star"></i>
                           <span>3.0</span>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star-half"></i>
                           <i class="far fa-star"></i>
                           <i class="far fa-star"></i>
                           <span>2.5</span>
                           </a>
                        </li>
                     </ul>
                  </div>
                  <!-- //reviews -->
                  <!-- deals -->
                  <div class="deal-leftmk left-side">
                     <h3 class="agileits-sear-head">Special Deals</h3>
                     <div class="row special-sec1">
                        <div class="col-xs-4 img-deals">
                           <img src="/resources/images/g1.jpg" alt="" class="img-fluid">
                        </div>
                        <div class="col-xs-8 img-deal1">
                           <h3>toys(barbie)</h3>
                           <a href="${pageContext.request.contextPath}/single">$180.00</a>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                     <div class="row special-sec1">
                        <div class="col-xs-4 img-deals">
                           <img src="/resources/images/g2.jpg" alt="" class="img-fluid">
                        </div>
                        <div class="col-xs-8 img-deal1">
                           <h3>toy(todos)</h3>
                           <a href="${pageContext.request.contextPath}/single">$99.00</a>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                     <div class="row special-sec1">
                        <div class="col-xs-4 img-deals">
                           <img src="/resources/images/g3.jpg" alt="" class="img-fluid">
                        </div>
                        <div class="col-xs-8 img-deal1">
                           <h3>toys (Grey)
						   </h3>
                           <a href="${pageContext.request.contextPath}/single">$165.00</a>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                     <div class="row special-sec1">
                        <div class="col-xs-4 img-deals">
                           <img src="/resources/images/g2.jpg" alt="" class="img-fluid">
                        </div>
                        <div class="col-xs-8 img-deal1">
                           <h3>Soft bear</h3>
                           <a href="${pageContext.request.contextPath}/single">$225.00</a>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                     <div class="row special-sec1">
                        <div class="col-xs-4 img-deals">
                           <img src="/resources/images/g4.jpg" alt="" class="img-fluid">
                        </div>
                        <div class="col-xs-8 img-deal1">
                           <h3>pink bear</h3>
                           <a href="${pageContext.request.contextPath}/single">$169.00</a>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                  </div>
                  <!-- //deals -->
               </div>
               <div class="left-ads-display col-lg-9">
                  <div class="row">
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="/resources/images/p1.jpg" class="img-thumbnail img-fluid" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="${pageContext.request.contextPath}/single" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="${pageContext.request.contextPath}/single">toys(barbie)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$575.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star" ></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="far fa-star-half-o"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys(barbie)">
                                          <input type="hidden" name="amount" value="575.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="/resources/images/p2.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="${pageContext.request.contextPath}/single" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="${pageContext.request.contextPath}/single">toy(todos)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$480.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star" ></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="far fa-star-half-o" ></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toy(todos)">
                                          <input type="hidden" name="amount" value="480.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="/resources/images/p3.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="${pageContext.request.contextPath}/single" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="${pageContext.request.contextPath}/single">toys (Grey)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$265.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys (Grey)">
                                          <input type="hidden" name="amount" value="265.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="/resources/images/p4.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="${pageContext.request.contextPath}/single" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="${pageContext.request.contextPath}/single">toys (Grey)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$67.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys (Grey)">
                                          <input type="hidden" name="amount" value="67.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="/resources/images/p3.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="${pageContext.request.contextPath}/single" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="${pageContext.request.contextPath}/single">toys(red)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$340.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys(red)">
                                          <input type="hidden" name="amount" value="340.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="/resources/images/p1.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="${pageContext.request.contextPath}/single" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="${pageContext.request.contextPath}/single">toys(blue)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$160.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys(blue)">
                                          <input type="hidden" name="amount" value="160.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="/resources/images/p2.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="${pageContext.request.contextPath}/single" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="${pageContext.request.contextPath}/single">toy(todos)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$480.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toy(todos)">
                                          <input type="hidden" name="amount" value="480.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="/resources/images/p3.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="${pageContext.request.contextPath}/single" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="${pageContext.request.contextPath}/single">toys (blue)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$265.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys (blue)">
                                          <input type="hidden" name="amount" value="265.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="/resources/images/p4.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="${pageContext.request.contextPath}/single" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="${pageContext.request.contextPath}/single">toys (Grey)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$67.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys (Grey)">
                                          <input type="hidden" name="amount" value="67.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
    <jsp:include page="toysFooter.jsp" flush="true"></jsp:include>
    
    
      <script src="/resources/js/jquery-ui.js"></script>
      <script>
         //<![CDATA[ 
         $(window).load(function () {
         	$("#slider-range").slider({
         		range: true,
         		min: 0,
         		max: 9000,
         		values: [50, 6000],
         		slide: function (event, ui) {
         			$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
         		}
         	});
         	$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));
         
         }); //]]>
      </script>
      <!-- //price range (top products) -->
      <!-- start-smoth-scrolling -->
      <script src="/resources/js/move-top.js"></script>
      <script src="/resources/js/easing.js"></script>
      <script>
         jQuery(document).ready(function ($) {
         	$(".scroll").click(function (event) {
         		event.preventDefault();
         		$('html,body').animate({
         			scrollTop: $(this.hash).offset().top
         		}, 900);
         	});
         });
      </script>
      <!-- start-smoth-scrolling -->
      <!-- here stars scrolling icon -->
      <script>
         $(document).ready(function () {
         
         	var defaults = {
         		containerID: 'toTop', // fading element id
         		containerHoverID: 'toTopHover', // fading element hover id
         		scrollSpeed: 1200,
         		easingType: 'linear'
         	};
         
         
         	$().UItoTop({
         		easingType: 'easeOutQuart'
         	});
         
         });
      </script>
      <!-- //here ends scrolling icon -->
      <!--bootstrap working-->
      <script src="/resources/js/bootstrap.min.js"></script>
