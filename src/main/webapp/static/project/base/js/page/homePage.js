$(function() {
	/**
	 * 小类目
	 */
	base.smallCategory.begin("homePagesmallCategory", "homePagesmallCategoryDiv", null);
	
	/**
	 * 上传控件
	 */
	/*var homePageUploadData = {};
	baseUtil.template("uploadTemplate", homePageUploadData,
	"#homePageUploadDiv");
	var homePageUpload = base.upload.init("homePageUpload");*/

	/**
	 * 可拖动排序的图片列表
	 */
	/*var homePageSortableImageListView = [
			{
				ProductID : 1,
				ProductName : "Chai",
				SupplierID : 1,
				CategoryID : 1,
				QuantityPerUnit : "10 boxes x 20 bags",
				UnitPrice : 18.0000,
				UnitsInStock : 39,
				UnitsOnOrder : 0,
				ReorderLevel : 10,
				Discontinued : false,
				Category : {
					CategoryID : 1,
					CategoryName : "Beverages",
					Description : "Soft drinks, coffees, teas, beers, and ales"
				}
			},
			{
				ProductID : 2,
				ProductName : "Chang",
				SupplierID : 1,
				CategoryID : 1,
				QuantityPerUnit : "24 - 12 oz bottles",
				UnitPrice : 19.0000,
				UnitsInStock : 17,
				UnitsOnOrder : 40,
				ReorderLevel : 25,
				Discontinued : false,
				Category : {
					CategoryID : 1,
					CategoryName : "Beverages",
					Description : "Soft drinks, coffees, teas, beers, and ales"
				}
			},
			{
				ProductID : 3,
				ProductName : "Aniseed Syrup",
				SupplierID : 1,
				CategoryID : 2,
				QuantityPerUnit : "12 - 550 ml bottles",
				UnitPrice : 10.0000,
				UnitsInStock : 13,
				UnitsOnOrder : 70,
				ReorderLevel : 25,
				Discontinued : false,
				Category : {
					CategoryID : 2,
					CategoryName : "Condiments",
					Description : "Sweet and savory sauces, relishes, spreads, and seasonings"
				}
			},
			{
				ProductID : 4,
				ProductName : "Chef Anton's Cajun Seasoning",
				SupplierID : 2,
				CategoryID : 2,
				QuantityPerUnit : "48 - 6 oz jars",
				UnitPrice : 22.0000,
				UnitsInStock : 53,
				UnitsOnOrder : 0,
				ReorderLevel : 0,
				Discontinued : false,
				Category : {
					CategoryID : 2,
					CategoryName : "Condiments",
					Description : "Sweet and savory sauces, relishes, spreads, and seasonings"
				}
			},
			{
				ProductID : 5,
				ProductName : "Chef Anton's Gumbo Mix",
				SupplierID : 2,
				CategoryID : 2,
				QuantityPerUnit : "36 boxes",
				UnitPrice : 21.3500,
				UnitsInStock : 0,
				UnitsOnOrder : 0,
				ReorderLevel : 0,
				Discontinued : true,
				Category : {
					CategoryID : 2,
					CategoryName : "Condiments",
					Description : "Sweet and savory sauces, relishes, spreads, and seasonings"
				}
			} ];
	var homePageSortableImageListViewdataSource = new kendo.data.DataSource({
        data: homePageSortableImageListView,
        pageSize: 2
    });
	 $("#listView").kendoListView({
         dataSource: homePageSortableImageListViewdataSource,
         template: kendo.template($("#template").html())
     });
     $("#pager").kendoPager({
         dataSource: homePageSortableImageListViewdataSource
     });
     $("#listView").kendoSortable({
         filter: ">div.product",
         cursor: "move",
         placeholder: function(element) {
             return element.clone().css("opacity", 0.1);
         },
         hint: function(element) {
             return element.clone().removeClass("k-state-selected");
         },
         change: function(e) {
             var skip = homePageSortableImageListViewdataSource.skip(),
                 oldIndex = e.oldIndex + skip,
                 newIndex = e.newIndex + skip,
                 data = homePageSortableImageListViewdataSource.data(),
                 dataItem = homePageSortableImageListViewdataSource.getByUid(e.item.data("uid"));

             homePageSortableImageListViewdataSource.remove(dataItem);
             homePageSortableImageListViewdataSource.insert(newIndex, dataItem);
         }
     });*/
});