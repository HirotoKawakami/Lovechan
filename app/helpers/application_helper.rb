module ApplicationHelper
  def default_meta_tags
    {
      site: 'ラヴちゃん Official Web Site | Lafary',
      reverse: true,
      charset: 'utf-8',
      description: 'サルーでは毎日の晩酌や、たまの店飲みを他のお酒好き達とシェアできます。まだ知らないお酒や、新しい飲み仲間に出会えます。',
      keywords: 'かわいい,ゆめかわ,ゆめかわいい,ピンク,女の子,キャラクター,グッズ,うさぎ,ぬいぐるみ,サンリオ,サンエックス,ときめき,ラヴリー,メルヘン,ファンシー,カルチャー,魔法,キラキラ,ふわふわ',
      canonical: request.original_url,
      separator: '|',
      icon: image_url('/love_icon-01.png'),
      og: {
        site_name: 'ラヴちゃん Official Web Site | Lafary',
        title: 'ラヴちゃん Official Web Site | Lafary',
        description: 'サルーでは毎日の晩酌や、たまの店飲みを他のお酒好き達とシェアできます。まだ知らないお酒や、新しい飲み仲間に出会えます。',
        type: 'website',
        url: request.original_url,
        image: image_url('/love_icon-01.png'),
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image',
        title: 'ラヴちゃん Official Web Site | Lafary',
        description: 'サルーでは毎日の晩酌や、たまの店飲みを他のお酒好き達とシェアできます。まだ知らないお酒や、新しい飲み仲間に出会えます。',
        image: image_url('/love_icon-01.png')
      }
    }
  end
end
