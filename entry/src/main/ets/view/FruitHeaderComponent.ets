@Component
export struct FruitHeaderComponent{
  build(){
    //排行榜列表头
    Row() {
      Text('排名')
        .fontSize(14)
        .fontColor('#989a9c')
        .width('30%')

      Text('种类')
        .fontSize(14)
        .fontColor('#989a9c')
        .width('50%')

      Text('得票数')
        .fontSize(14)
        .fontColor('#989a9c')
        .width('20%')
    }
    .width('90%')
    .padding(15)
  }
}