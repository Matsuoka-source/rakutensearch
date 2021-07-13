class GoodsController < ApplicationController
  def search
    if params[:keyword]
      @goods = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
      # search.html.erbのフォームで検索された言葉をparams[:keyword]で受け取って、そいつが入力されているかif 文にかけてやります。
      # RakutenWebService::Ichiba::Itemというオブジェクトのsearchメソッドで商品情報が格納されているオブジェクトを配列で受け取り、@itemsというクラス変数に代入。
      # その@itemsという配列を_good_list.html.erb上でitemという変数に展開していくわけですね。
      # 展開したitemのプロパティを表示させてあげれば、商品のタイトル、商品の画像 URL などが取得できるようになっています。
      # 参考サイトではitemsだったのですがviewで使用しているのはgoodsだったのでそちらに変更しないと表示されない
    end
  end
end
