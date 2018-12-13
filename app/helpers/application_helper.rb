module ApplicationHelper
  def default_meta_tags
    {
      site: 'ラヴリーエンジェル♡ | ラヴちゃん',
      reverse: true,
      charset: 'utf-8',
      description: 'ときめきラヴリー♡夢見るうさぎのおんなのこです♡',
      keywords: 'かわいい,ゆめかわ,ゆめかわいい,ピンク,女の子,キャラクター,グッズ,うさぎ,ぬいぐるみ,サンリオ,サンエックス,ときめき,ラヴリー,メルヘン,ファンシー,カルチャー,魔法,キラキラ,ふわふわ',
      canonical: request.original_url,
      separator: '|',
      icon: image_url('/love_icon-01.png'),
      og: {
        site_name: 'ラヴリーエンジェル♡ | ラヴちゃん',
        title: 'ラヴちゃん Official Web Site | Lafary',
        description: 'ときめきラヴリー♡夢見るうさぎのおんなのこです♡',
        type: 'website',
        url: request.original_url,
        image: image_url('/love_icon-01.png'),
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image',
        title: 'ラヴリーエンジェル♡ | ラヴちゃん',
        description: 'ときめきラヴリー♡夢見るうさぎのおんなのこです♡',
        image: image_url('/love_icon-01.png')
      }
    }
  end
end
