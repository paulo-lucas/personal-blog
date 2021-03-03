tags = [
  { title: "Express", image_url: "", },
  { title: "React", image_url: "", },
  { title: "Ruby", image_url: "" }
]

tags.each do |tag|
  Tag.find_or_create_by!(tag)
end


articles = [
  {
    title: "Como utilizar useContext + useReducer no react",
    alias: "react-usecontext-usereducer",
    banner_url: "",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque nec urna sed posuere. Integer nec tincidunt massa. Proin tempus ut nisi non mollis. Vivamus sodales diam et tortor egestas, eu venenatis turpis accumsan. Donec ligula magna, finibus at condimentum quis, aliquet eu erat. Ut pretium ligula id ornare eleifend. Sed leo purus, scelerisque non dictum et, pharetra sed purus. Nullam porttitor sagittis dolor ac porta. Vestibulum a ante nulla. In porta vulputate dui, et efficitur nunc varius quis. Sed vel aliquam metus. Curabitur metus massa, pretium non sollicitudin sit amet, dignissim a orci.",
    tag: Tag.find_by(title: "React")
  },
  {
    title: "Configurando I18n com Ruby",
    alias: "i18n-ruby",
    banner_url: "",
    body: "Etiam tempus scelerisque posuere. Suspendisse potenti. Cras dictum orci risus, sit amet posuere risus condimentum ut. Vivamus quis congue massa. Vestibulum commodo arcu orci, vel feugiat nibh sollicitudin sed. Proin quam velit, tempor non sollicitudin nec, ultricies a mi. Mauris sit amet nisi lorem. Aliquam quis est sed metus gravida laoreet. Maecenas mattis imperdiet suscipit. Pellentesque eget enim at risus dignissim tempor sit amet eget purus. Curabitur eget felis id arcu bibendum volutpat malesuada ut risus. Aenean augue purus, scelerisque ac mollis eu, ultricies ac sem. Nunc malesuada leo dolor, dignissim rhoncus erat aliquam vel. Nullam eu venenatis neque.",
    tag: Tag.find_by(title: "Ruby")
  },
  {
    title: "Criando e gerenciando multiplos routers com Express",
    alias: "gerenciando-routers-express",
    banner_url: "",
    body: "Sed a eleifend felis. Pellentesque vitae ligula purus. Fusce malesuada lorem mi, vitae luctus purus porttitor nec. Etiam quis tempus ligula. Proin et felis iaculis, convallis tortor in, pellentesque nibh. Vestibulum facilisis tortor sed purus aliquet aliquet. Vestibulum eleifend ipsum eget metus dignissim auctor. Vivamus cursus risus ac enim bibendum, quis sollicitudin tortor dictum. Cras pulvinar interdum mi eget efficitur. Sed accumsan egestas ullamcorper. Fusce luctus dui sed erat consectetur vehicula. Curabitur accumsan justo vitae lectus varius, sit amet interdum libero mollis. In non tempus erat.",
    tag: Tag.find_by(title: "Express")
  },
  {
    title: "Configurando o recebimento de push notifications com react native",
    alias: "push-notifications-react-native",
    banner_url: "",
    body: "Curabitur tempus metus id nisi commodo, vel porttitor purus posuere. Fusce ultrices consequat dolor, non vestibulum enim tempus quis. Suspendisse potenti. Etiam fringilla ultrices odio vel fermentum. Maecenas quis metus quis nunc euismod convallis et eget sem. Sed molestie, sapien id pellentesque sagittis, elit nibh sagittis leo, non congue velit odio id enim. Ut tristique tempus nunc ut vestibulum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus congue nulla.",
    tag: Tag.find_by(title: "React")
  },
  {
    title: "Gerando build de produção com Node/TypeScript",
    alias: "deploy-node-typescript",
    banner_url: "",
    body: "Pellentesque neque odio, feugiat sed massa quis, mattis ultricies neque. Etiam feugiat nunc nisl, ut interdum enim volutpat feugiat. Phasellus a magna a nisl tincidunt mattis. Nam ac nisl sed magna viverra bibendum quis venenatis ante. Morbi rhoncus auctor arcu, a hendrerit nulla pulvinar quis. Sed felis mi, mollis at malesuada a, elementum a velit. Aenean ullamcorper libero id neque sodales consequat. Fusce dictum malesuada sodales. Sed eget nunc at sem convallis elementum in vel erat. Pellentesque vitae elit vel augue ultricies molestie sit amet vitae odio.",
    tag: Tag.find_by(title: "Express")
  }
]

articles.each do |article|
  Article.find_or_create_by!(article)
end