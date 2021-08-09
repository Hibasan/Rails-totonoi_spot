User.create!([
  {name: 'Hibasan2105',    email: 'test01@email.com',    password: 'password',    password_confirmation: 'password',    confirmed_at: Time.now,    admin: true  },
  {name: 'おめがリオ',    email: 'test02@email.com',    password: 'password',    password_confirmation: 'password',    confirmed_at: Time.now,    admin: false  },
  {name: 'おめがレイ',    email: 'test03@email.com',    password: 'password',    password_confirmation: 'password',    confirmed_at: Time.now,    admin: false  },
  {name: 'あるふぁライ',    email: 'test04@email.com',    password: 'password',    password_confirmation: 'password',    confirmed_at: Time.now,    admin: false  },
  {name: 'あるふぁロイ',    email: 'test05@email.com',    password: 'password',    password_confirmation: 'password',    confirmed_at: Time.now,    admin: false  }
  ])

Sex.create!([
  {id: 1, sex: "男性"},
  {id: 2, sex: "女性"}
  ])

RestArea.create!([
  {id: 1, area: "室内"},
  {id: 2, area: "室外"}
  ])

Facility.create!([
  {name: 'お風呂の国', prefecture: '神奈川県', address: '横浜市鶴見区下末吉２丁目２５−２３',
    homepage: 'http://www.ofuronokuni.co.jp/', business_hours: '11時00分〜24時00分', holiday: '',
    fee: '750円', payment: '現金', comment: ''},
  {name: 'ヌーランドさがみ湯', prefecture: '東京都', address: '大田区仲六郷２丁目７−５',
    homepage: 'http://www.nu-land.com/', business_hours: '11時00分〜23時00分', holiday: '',
    fee: '1250円', payment: '現金', comment: ''},
  {name: 'RAKU SPA 鶴見', prefecture: '神奈川県', address: '横浜市鶴見区元宮２丁目１−３９',
    homepage: 'http://rakuspa.com/tsurumi/', business_hours: '10時00分〜20時00分', holiday: '',
    fee: '1480円', payment: '現金', comment: ''},
  {name: 'ヨコヤマ・ユーランド鶴見', prefecture: '神奈川県', address: '横浜市鶴見区下末吉２丁目２１',
    homepage: 'http://www.yu-land.com/', business_hours: '10時00分〜20時00分', holiday: '',
    fee: '1900円', payment: '現金', comment: ''},
  {name: '川崎ビッグ', prefecture: '神奈川県', address: '川崎市川崎区小川町１５−１１',
    homepage: 'http://www.kawasaki-big.com/', business_hours: '24時間営業', holiday: '水曜日',
    fee: '1100円〜', payment: '現金', comment: ''},
  {name: '天然温泉 平和島', prefecture: '東京都', address: '大田区平和島１丁目１−１',
    homepage: 'http://www.heiwajima-onsen.jp/', business_hours: '10時00分〜20時00分', holiday: '',
    fee: '2000円〜', payment: '現金', comment: ''},
  {name: 'スパリゾートプレジデント', prefecture: '東京都', address: '台東区上野３丁目２８−６',
    homepage: 'https://sparesortpresident.com/', business_hours: '24時間営業', holiday: '水曜日',
    fee: '1200円〜', payment: '現金', comment: ''},
  {name: 'サウナ&カプセルホテル北欧', prefecture: '東京都', address: '台東区上野７丁目２−１６',
    homepage: 'https://www.saunahokuou.com/?utm_source=google&utm_medium=map', business_hours: '24時間営業', holiday: '水曜日',
    fee: '1400円〜', payment: '現金', comment: ''},
  {name: 'オアシスサウナ アスティル', prefecture: '東京都', address: '港区新橋３丁目１２−３',
    homepage: 'http://www.oasissauna.jp/', business_hours: '12時00分〜10時00分', holiday: '水曜日',
    fee: '1480円〜', payment: '現金', comment: ''},
  {name: 'かるまる 池袋店（サウナ&ホテル）', prefecture: '東京都', address: '豊島区池袋２丁目７−７',
    homepage: 'https://karumaru.jp/ikebukuro/?utm_source=google&utm_medium=maps', business_hours: '11時00分〜10時00分', holiday: '水曜日',
    fee: '2980円〜', payment: '現金', comment: ''},
  {name: '朝日湯源泉 ゆいる', prefecture: '神奈川県', address: '川崎市川崎区鋼管通３丁目１−２',
    homepage: 'http://asahiyu1010.com/', business_hours: '10時00分〜23時00分', holiday: '水曜日',
    fee: '1540円〜', payment: '現金', comment: ''},
  {name: '朝日湯源泉 ゆいる', prefecture: '神奈川県', address: '川崎市川崎区鋼管通３丁目１−２',
    homepage: 'http://asahiyu1010.com/', business_hours: '10時00分〜23時00分', holiday: '水曜日',
    fee: '1540円〜', payment: '現金', comment: ''},
  {name: '宮前平源泉 湯けむりの庄', prefecture: '神奈川県', address: '川崎市宮前区宮前平２丁目１３−３',
    homepage: 'https://www.yukemurinosato.com/miyamaedaira/', business_hours: '10時00分〜20時00分', holiday: '水曜日',
    fee: '1320円〜', payment: '現金', comment: ''},
  {name: '宮前平源泉 湯けむりの庄', prefecture: '神奈川県', address: '川崎市宮前区宮前平２丁目１３−３',
    homepage: 'https://www.yukemurinosato.com/miyamaedaira/', business_hours: '10時00分〜20時00分', holiday: '水曜日',
    fee: '1320円〜', payment: '現金', comment: ''},
  {name: 'スパ・リブール ヨコハマ', prefecture: '神奈川県', address: '横浜市鶴見区獅子ケ谷２丁目３９−１８',
    homepage: 'https://www.libur.co.jp/', business_hours: '10時00分〜8時00分', holiday: '水曜日',
    fee: '1520円〜', payment: '現金', comment: ''},
  {name: '綱島源泉湯けむりの庄', prefecture: '神奈川県', address: '横浜市港北区樽町３丁目７−６１',
    homepage: 'http://yukemurinosato.com/tsunashima?utm_source=google&utm_medium=gmb', business_hours: '9時00分〜20時00分', holiday: '水曜日',
    fee: '1320円〜', payment: '現金', comment: ''},
  {name: 'おふろの王様 大井町店', prefecture: '東京都', address: '品川区大井１丁目５０−５',
    homepage: 'http://www.ousama2603.com/shop/ooimachi/', business_hours: '9時30分〜20時00分', holiday: '水曜日',
    fee: '1380円〜', payment: '現金', comment: ''},
  {name: 'みうら湯', prefecture: '神奈川県', address: '横浜市南区中里１丁目２５−１',
    homepage: 'http://www.miurayu.com/', business_hours: '10時00分〜20時00分', holiday: '水曜日',
    fee: '820円〜', payment: '現金', comment: ''},
  {name: '萩の湯', prefecture: '東京都', address: '台東区根岸２丁目１３−１３',
    homepage: 'http://haginoyu.jp/', business_hours: '6時00分〜9時00分,11時00分〜1時00分', holiday: '水曜日',
    fee: '480円〜', payment: '現金', comment: ''},
  {name: '両国湯屋 江戸遊', prefecture: '東京都', address: '墨田区亀沢１丁目５−８',
    homepage: 'https://www.edoyu.com/ryougoku/', business_hours: '10時00分〜20時00分', holiday: '水曜日',
    fee: '2750円〜', payment: '現金', comment: ''}
  ])

20.times do |n|
  facility_id = n + 1
  temp_1 = rand(80..110)
  intern_1 = rand(5..20)
  temp_2 = rand(80..110)
  intern_2 = rand(5..20)
  Sauna.create!([
  {facility_id: facility_id, sex_id: 1, temperature: temp_1, intern: intern_1, comment: ""},
  {facility_id: facility_id, sex_id: 2, temperature: temp_2, intern: intern_2, comment: ""}
  ])
  temp_1 = rand(10..25)
  intern_1 = rand(2..8)
  temp_2 = rand(10..25)
  intern_2 = rand(2..8)
  WaterBath.create!([
  {facility_id: facility_id, sex_id: 1, temperature: temp_1, intern: intern_1, comment: ""},
  {facility_id: facility_id, sex_id: 2, temperature: temp_2, intern: intern_2, comment: ""}
  ])
end

20.times do |n|
  facility_id = n + 1
  @number = []
  if 1 == rand(0..1)
    5.times do
      number = [nil, nil, nil, 1, 2, 3]
      @number << number.shuffle[0]
    end
    Chair.create!(facility_id: facility_id, sex_id: 1, rest_area_id: 1, bath: @number[0] , deck: @number[1], relax: @number[2], bench: @number[3],bench_non_backrest: @number[4])
  end
end

20.times do |n|
  facility_id = n + 1
  @number = []
  if 1 == rand(0..1)
    5.times do
      number = [nil, nil, nil, 1, 2, 3]
      @number << number.shuffle[0]
    end
    Chair.create!(facility_id: facility_id, sex_id: 1, rest_area_id: 2, bath: @number[0] , deck: @number[1], relax: @number[2], bench: @number[3],bench_non_backrest: @number[4])
  end
end

20.times do |n|
  facility_id = n + 1
  @number = []
  if 1 == rand(0..1)
    5.times do
      number = [nil, nil, nil, 1, 2, 3]
      @number << number.shuffle[0]
    end
    Chair.create!(facility_id: facility_id, sex_id: 2, rest_area_id: 1, bath: @number[0] , deck: @number[1], relax: @number[2], bench: @number[3],bench_non_backrest: @number[4])
  end
end

20.times do |n|
  facility_id = n + 1
  @number = []
  if 1 == rand(0..1)
    5.times do
      number = [nil, nil, nil, 1, 2, 3]
      @number << number.shuffle[0]
    end
    Chair.create!(facility_id: facility_id, sex_id: 2, rest_area_id: 2, bath: @number[0] , deck: @number[1], relax: @number[2], bench: @number[3],bench_non_backrest: @number[4])
  end
end



Review.create!([
  {user_id: 2, facility_id: 1, dry:3, light: 3, wide: 2, comment: ""  },
  {user_id: 3, facility_id: 1, dry:4, light: 4, wide: 2, comment: "サウナイキタイ書かなきゃ……と寝落ちしたので朝書いてます。15時熱波に間に合うようチェックイン。パンダ小隊が。心臓をキュンと射撃されて靴箱へ。またひとつ井上さんの詩が、役目を終えゴートゥーヘブンした靴箱を葬送しておられました。ありがとう。"  },
  {user_id: 4, facility_id: 1, dry:5, light: 4, wide: 2, comment: "土曜これなかったので意気込みすぎて15分前にサ室にイン。シッダアーサナで待ち構えます。始まる前に井上さんと復火さんが来て「サ室の匂い対策」と、アロマ湯バケツをストーブの上に。いい湿度が身体を包みこみ深部体温あっつあつ。"  },
  {user_id: 5, facility_id: 1, dry:3, light: 3, wide: 2, comment: "その後オルカさんと眞白さんが一旦空気を入れ替えてくれたものの、もはや完全にデキアガっていました。ロウリュ前に合言葉聞いただけで未来への扉から水風呂へゴートゥーヘブン！外気浴では陽が暖かくいい風が吹いていて、しっかり拭いた肌からぷちぷちと毛穴が開いていき最高にととのいました。気持ち良すぎてニヤニヤ薄ら笑いを浮かべてしまいましたが、人目を気にしてニヤニヤを辞めるとトトノイも薄れるので顔面放置w"  },
  {user_id: 2, facility_id: 1, dry:4, light: 4, wide: 4, comment: "あまりにも良い風が吹いてるので、風を送りに廻る眞白さんも照れくさそうw 私はニヤニヤのまま会釈。さぞ気持ち悪かったことでしょう。気づくとノドがカラッカラ。一時退場してパネジョッキオールフリーと遅めのお昼。中ジョッキ、大ジョッキ、その上がパネジョッキ。パネってなんじゃろ。じゃろーじゃろーじゃろー♪という昔のCMを頭で流しながらゴキュゴキュと流し込むとノドから身体全体へ至福が拡がります。カツカレーとイカフライの揚げ二段構えとオールフリーが最高に調和しました。ごちそうさまでした。"  },
  {user_id: 3, facility_id: 3, dry:5, light: 1, wide: 5, comment: "なんだかんだ言って、お風呂も沢山&広々ですし、脱衣所とかも清潔。（そりゃちとお高いし。）京急平和島や京浜東北大森まで無料バスもあって楽ちん。旅行が再開したら、きっと羽田帰りに寄るでしょう。寄りたいな。あー楽しかった。"  },
  {user_id: 4, facility_id: 3, dry:1, light: 1, wide: 4, comment: "高温サウナ90℃×10分、水風呂20℃×2分、ビューイング付近のトトノイベンチもしくは腰湯で5分を3セット。水風呂はバイブラ無し20℃と入りやすい温度です。長く入れました。"  },
  {user_id: 5, facility_id: 3, dry:2, light: 1, wide: 2, comment: "次に高温サウナを偵察。90℃表記、少し乾燥。広いサ室に持ち込みマットもあるので、敷いてあるマットも綺麗さっぱり。テレビ付き。密回避のためにカラーコーンが置いてありますが、まぁ平日昼間ですし2.3人程度。"  },
  {user_id: 2, facility_id: 3, dry:3, light: 4, wide: 3, comment: "次にビューイングスパ。ビューイングの意味なのかわかりませんが、3段の大きな大きな休憩スペースがテレビに向いてます。天然温泉と炭酸湯。"  },
  {user_id: 3, facility_id: 1, dry:4, light: 3, wide: 1, comment: "まずはシャイニングスパ。天井や窓からの光がとっても明るい！こちらの温泉は塩気のお風呂。ラクーアみたいな塩化物泉。バイブラの白湯などもあり、とにかく広々開放的です。"  },
  {user_id: 4, facility_id: 12, dry:5, light: 1, wide: 1, comment: "こちらは岩盤浴のロウリュイベントが有名ですが、温泉とサウナを楽しみたくて岩盤浴無し。マッサージも種類豊富。スパ銭で鍼、しかも美容鍼やってるトコなんて初めて見ました。（まだ知らない世界が多い）誘惑に負けそうになりながらお風呂へ。"  },
  {user_id: 5, facility_id: 16, dry:1, light: 2, wide: 4, comment: "テルマリウムを挟んでハーブの香りが残るサウナ室にもう一度。もはや完成間近な状態で浴室をあとにしてレストランへ。塾中に師が激推ししていた一人鍋に雑炊セットで、完成。まさにメイドインヘブン。"  },
  {user_id: 2, facility_id: 7, dry:2, light: 3, wide: 3, comment: "師がタオルに手をかける前に離脱者が出会うはじめる。うん、今日の新橋熱波道場は…あつい。なかなか出来上がってきたコンディションを静かに深く呼吸していると、ここで『じゃあ108熱波行きますよ』とのコトバが聞こえた。ヤバい。かなり熱いぞ。大丈夫か？ワタシ。"  },
  {user_id: 3, facility_id: 7, dry:3, light: 5, wide: 4, comment: "休憩スペースにあるバキバキイス。正式名称は『テルマベッド』だが、ここに座るとバキバキに整い、正直立てなくなるため仲間の間ではバキバキイスとか呼ばれてたりする。あまりにもバキバキに整いすぎてめちゃ強面の力道山みたいなオッさんがここで2時間ぐらい爆睡してどいてくれない事件も発生した。めちゃくちゃみんな怒ってた。おのれ、、、、"  },
  {user_id: 4, facility_id: 5, dry:4, light: 5, wide: 5, comment: "素晴らしいところは水風呂である。ここの水風呂は水温約14〜17度くらい。常に適温であり、寒過ぎず、ぬる過ぎず、サウナーが求める整いへ誘ってくれる裏切ることのない仕事をする。某か○まるのような寒すぎて全く入れない水風呂や、ぬるすぎて全然整わない両極端なやつを体験すると、如何にこの水風呂が素晴らしいかわかる。"  },
  {user_id: 5, facility_id: 2, dry:5, light: 3, wide: 5, comment: "入館したらいざサウナへ。身体を清めたらまずはドライサウナ。ここはテレビがないため静かになりたい人にはうってつけ。"  },
  {user_id: 2, facility_id: 1, dry:3, light: 4, wide: 5, comment: "僕が初めてサウナに目覚めた場所、アスティル。サウナーが求めるものがシンプルイズベストに濃縮され一つ一つのクオリティが高く、無駄のないサウナである。故に僕の中で東京トップサウナとして君臨する。"  },
  {user_id: 3, facility_id: 1, dry:4, light: 3, wide: 5, comment: "サウナ：10分 × 3水風呂：1分 × 3休憩：10分 × 3合計：3セット一言：今の私にとっては水温が少し物足りないが、なんかこの温度は温度でゆったり入れていいかもしれない。原点回帰するような場所である。"  },
  {user_id: 4, facility_id: 12, dry: 5, light: 3, wide: 1, comment: "あがって長時間まったり。21時のサウナ歌謡ショー観覧へ。大西さんが歌うと機械の調子が悪くなってアカペラになったりとなかなかトラブル連続の歌謡ショーでした。"  },
  {user_id: 5, facility_id: 13, dry: 3, light: 1, wide: 3, comment: "まったり食休みしてから17時熱波のため再入場。井上さん復火さんからの108連波をツヤツヤお肌の天谷さんの正拳突きと共にしっかり受けきったら水風呂と岩の上に座って外気浴。お尻が冷たくない良い季節になりました。"  }
  ])
