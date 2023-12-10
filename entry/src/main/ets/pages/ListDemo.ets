@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State count: number = 0

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize('30.00fp')
          .fontWeight(FontWeight.Bold)
          //.fontColor(Color.Red)
          .fontColor($r('app.color.yellow'))

        Button('按钮', {type: ButtonType.Normal})
          .width(100)
          .onClick(()=>{
            this.count++;
            console.info('点击了按钮'+this.count)
          })
        Text(this.count.toString())
          .fontSize(30)

        Image($r('app.media.icon'))
          .width(50)
          .height(50)
      }
      .alignItems(HorizontalAlign.Center)
      .justifyContent(FlexAlign.Start)
      .width('100%')
      .height('100%')
    }
    .height('100%')
    .backgroundColor(Color.Red)
  }
}