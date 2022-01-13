﻿﻿////////////////////////////////////////
// 퍼블 UI 공통 스크립트
// shop main 사용 스크립트 분리 - 210927
// ui.js와 호출 구조 맞추기 위해 기존 구조에서 필요한 항목만 가져옴.
////////////////////////////////////////

var shop = {
	init:function() {
		this.disp.init();
	},
	
	disp:{ // 전시 
		init:function(){
			this.sld.init();
		},
		sld:{ // 샵 메인 슬라이드UI 모음
			init:function(){
				$(this.visul.els).length && this.visul.using();
				$(this.often.els).length && this.often.using();
				$(this.recom.els).length && this.recom.using();
				this.tdeal.init();
				$(this.discn.els).length && this.discn.using();
				$(this.mdpic.els).length && this.mdpic.using();
				$(this.exclu.els).length && this.exclu.using();
				$(this.packg.els).length && this.packg.using();
				$(this.reviw.els).length && this.reviw.using();
			},
			visul:{ // 상단비쥬얼배너
				slide: new Array(),
				els:".mn_visul_sld .swiper-container",
				using: function() {
					//CSR-1948 211102 lju02
					if($(".mn_visul_sld .swiper-container li").length <= 1) {
						$(".mn_visul_sld .sld-nav").hide();
						$(".mn_visul_sld .swiper-container").each(function(i,n){
							shop.disp.sld.visul.slide.push(new Swiper($(n), {
								observer: true,
								observeParents: true,
								watchOverflow:true,
								simulateTouch:false,
								autoHeight:true,
								spaceBetween:0,
								loop: false,										//2021.05.27추가
								slidesPerView:'auto',							//루프 모드에서 중복 슬라이드 허용 - APETQA-7026 210906 lju02 루프 사용시 index=0 에서 뒤로 버튼 클릭시 화면 반짝임 방지 위해 사용
								pagination: {
									el: '.mn_visul_sld .pagination',
									type: 'fraction',
								}
							}));
						})
						
					}
					else{
						$(".mn_visul_sld .swiper-container").each(function(i,n){
							shop.disp.sld.visul.slide.push(new Swiper($(n), {
								observer: true,
								observeParents: true,
								watchOverflow:true,
								simulateTouch:false,
								autoHeight:true,
								spaceBetween:0,
								loop: true,										//2021.05.27추가
								slidesPerView:'auto',							//루프 모드에서 중복 슬라이드 허용 - APETQA-7026 210906 lju02 루프 사용시 index=0 에서 뒤로 버튼 클릭시 화면 반짝임 방지 위해 사용
								autoplay: {										//자동롤링 - CSR-1948 211028 lju02
									delay: 5000,								//자동롤링 - CSR-1948 211028 lju02
									disableOnInteraction: false,
								},
								navigation: {
									nextEl: '.mn_visul_sld .sld-nav .bt.next',
									prevEl: '.mn_visul_sld .sld-nav .bt.prev',
								},
								pagination: {
									el: '.mn_visul_sld .pagination',
									type: 'fraction',
								}
							}));
						})
					}
				}
			},
			often:{ // 자주구매한상품 
				slide: new Array(),
				els: ".mn_often_sld  .swiper-container",
				using: function() {
					$(".mn_often_sld .swiper-container").each(function(i,n){
						shop.disp.sld.often.slide.push(new Swiper($(n), {
							observer: true,
							observeParents: true,
							watchOverflow:true,
							simulateTouch:false,
							freeMode: false,
							slidesPerView: 3,
							slidesPerGroup: 3,
							spaceBetween: 30,
							navigation: {
								nextEl: $(n).closest('.mn_often_sld').find('.sld-nav .bt.next'),
								prevEl: $(n).closest('.mn_often_sld').find('.sld-nav .bt.prev'),
							},
							breakpoints: {
								1024: {
									spaceBetween: 10,
									slidesPerView: "auto",
									slidesPerGroup:1,
									freeMode: true,
								}
							}
						}));
					})
				}
			},
			recom:{ // 맞춤추천 
				slide: new Array(),
				els: ".mn_recom_sld  .swiper-container",
				using: function() {		// APET-1079 중복 슬라이드 210615 lju02
					$(".mn_recom_sld  .swiper-container").each(function(i,n){
						shop.disp.sld.recom.slide.push(new Swiper($(n), {
							observer: true,
							observeParents: true,
							watchOverflow:true,
							simulateTouch:false,
							freeMode: false,
							slidesPerView: 4,
							slidesPerGroup:4,
							spaceBetween: 30,
							navigation: {
								nextEl: $(n).closest('.mn_recom_sld').find('.sld-nav .bt.next'),
								prevEl: $(n).closest('.mn_recom_sld').find('.sld-nav .bt.prev'),
							},
							breakpoints: {
								1024: {
									spaceBetween: 10,
									slidesPerView: "auto",
									slidesPerGroup:1,
									freeMode: true,
								}
							}
						}));
					})
				}
			},
			tdeal:{ // 타임딜 
				init:function(){
					var _this = this;
					$(".mn_tdeal_sld").each(function(idx){
						idx++; 
						$(this).addClass("tdeal_"+idx);
					});
					_this.using();
				},
				els1: ".mn_tdeal_sld.tdeal_1 .swiper-container",
				els2: ".mn_tdeal_sld.tdeal_2 .swiper-container",
				opt1: {
					observer: true,
					observeParents: true,
					watchOverflow:true,
					freeMode: false,
					slidesPerView: 4,
					slidesPerGroup:4,
					spaceBetween: 30,
					simulateTouch:false,
					navigation: {
						nextEl:'.mn_tdeal_sld.tdeal_1 .sld-nav .bt.next',
						prevEl:'.mn_tdeal_sld.tdeal_1 .sld-nav .bt.prev',
					},
					breakpoints: {
						1024: {
							spaceBetween: 10,
							slidesPerView: "auto",
							slidesPerGroup:1,
							freeMode: true,
						}
					}
				},
				opt2: {
					observer: true,
					observeParents: true,
					watchOverflow:true,
					freeMode: false,
					slidesPerView: 4,
					slidesPerGroup:4,
					spaceBetween: 30,
					simulateTouch:false,
					navigation: {
						nextEl:'.mn_tdeal_sld.tdeal_2 .sld-nav .bt.next',
						prevEl:'.mn_tdeal_sld.tdeal_2 .sld-nav .bt.prev',
					},
					breakpoints: {
						1024: {
							spaceBetween: 10,
							slidesPerView: "auto",
							slidesPerGroup:1,
							freeMode: true,
						}
					}
				},
				slide:[],
				using: function() {
					this.slide1 = new Swiper( this.els1,this.opt1);
					this.slide2 = new Swiper( this.els2,this.opt2);
				}
			},
			discn:{ // 할인상품 
				slide: new Array(),
				els: ".mn_discn_sld  .swiper-container",
				using: function() {
					$(".mn_discn_sld  .swiper-container").each(function(i,n){
						shop.disp.sld.discn.slide.push(new Swiper($(n), {
							observer: true,
							observeParents: true,
							watchOverflow:true,
							simulateTouch:false,
							freeMode: false,
							slidesPerView: 4,
							slidesPerGroup:4,
							spaceBetween: 30,
							navigation: {
								nextEl: $(n).closest('.mn_discn_sld').find('.sld-nav .bt.next'),
								prevEl: $(n).closest('.mn_discn_sld').find('.sld-nav .bt.prev'),
							},
							breakpoints: {
								1024: {
									spaceBetween: 10,
									slidesPerView: "auto",
									slidesPerGroup:1,
									freeMode: true,
								}
							}
						}));
					})
				}
			},
			mdpic:{ // MD추천
				slide: new Array(),
				els: ".mn_mdpic_sld  .swiper-container",
				using: function() {
					$(".mn_mdpic_sld  .swiper-container").each(function(i,n){
						shop.disp.sld.mdpic.slide.push(new Swiper($(n), {
							observer: true,
							observeParents: true,
							watchOverflow:true,
							freeMode: false,
							slidesPerView: 3,
							slidesPerGroup:3,
							spaceBetween: 30,
							navigation: {
								nextEl: '.mn_mdpic_sld .sld-nav .bt.next',
								prevEl: '.mn_mdpic_sld .sld-nav .bt.prev',
							},
							breakpoints: {
								1024: {
									spaceBetween: 10,
									slidesPerView: "auto",
									slidesPerGroup:1,
									freeMode: true,
								}
							}
						}));
					})
				}
			},
			
			exclu:{ // 단독상품 
				els: ".mn_exclu_sld  .swiper-container",
				opt: {
					observer: true,
					observeParents: true,
					watchOverflow:true,
					simulateTouch:false,
					freeMode: false,
					slidesPerView: 2,
					slidesPerGroup:2,
					spaceBetween: 30,
					navigation: {
						nextEl: '.mn_exclu_sld .sld-nav .bt.next',
						prevEl: '.mn_exclu_sld .sld-nav .bt.prev',
					},
					breakpoints: {
						1024: {
							/* 21.07.22 APETQA-5249 lcm01 */
							//spaceBetween: 10,
							slidesPerView: 2,
							/* 21.07.22 APETQA-5249 lcm01 */
							slidesPerGroup:1,
							freeMode: true
						}
					}
				},
				using: function() {
					if (!ui.isMo()) {
						this.slide = new Swiper(this.els, this.opt);
					}
				}
			},
			/* APET-1101 21.06.16 lcm01수정 */
			packg:{ // 패키지
				slide: new Array(),
				els: ".mn_packg_sld  .swiper-container",
				using: function() {
					$(".mn_packg_sld  .swiper-container").each(function(i,n){
						shop.disp.sld.packg.slide.push(new Swiper($(n), {
							slidesPerView: 4,
							slidesPerColumn: 2,
							slidesPerGroup: 4, 
							spaceBetween: 30,
							navigation: {
								nextEl: '.mn_packg_sld .sld-nav .bt.next',
								prevEl: '.mn_packg_sld .sld-nav .bt.prev',
							},
							breakpoints: {
								1024: {
									spaceBetween: 10,
									slidesPerView: 2,
									slidesPerGroup:2
								}
							}
						}));
					})
				}
			},
			/*//APET-1101 21.06.16 lcm01수정 */
			reviw:{ // 후기 
				els: ".mn_reviw_sld  .swiper-container",
				opt: {
					observer: true,
					observeParents: true,
					watchOverflow:true,
					simulateTouch:false,
					freeMode: false,
					slidesPerView: 4,
					slidesPerGroup:4,
					spaceBetween: 30,
					navigation: {
						nextEl: '.mn_reviw_sld .sld-nav .bt.next',
						prevEl: '.mn_reviw_sld .sld-nav .bt.prev',
					},
					breakpoints: {
						1024: {
							spaceBetween: 10,
							slidesPerView: "auto",
							slidesPerGroup:1,
							freeMode: true,
						}
					}
				},
				using: function() {
					this.slide = new Swiper(this.els, this.opt);
				}
			},
		},
		
	},
};
$(document).ready(function(){
	discnSwiper();
});


//CSR-1815 210930 lju02
function discnSwiper() {
	$(".discnt").each(function(index, element){
		var $this = $(this);
		$this.addClass('list' + index);
    
		var swiper = new Swiper('.discnt.list' + index + ' .swiper-container', {
			slidesPerView: 4,
			slidesPerColumn: 2,
			slidesPerGroup: 4,
			spaceBetween: 30,
			simulateTouch:false,

			navigation: {
				nextEl: '.discnt.list' + index + ' .sld-nav .bt.next',
				prevEl: '.discnt.list' + index + ' .sld-nav .bt.prev',
			},
			breakpoints: {
				768: {
					slidesPerView: 4.34,
					slidesPerGroup: 4,
					spaceBetween: 10,
				},
				425: {
					slidesPerView: 2.05,
					slidesPerGroup: 2,
					spaceBetween: 10,
				}
			}
        });
        
       
    });
}
