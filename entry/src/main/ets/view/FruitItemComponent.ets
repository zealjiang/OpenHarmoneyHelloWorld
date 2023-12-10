@Component
export struct FruitItemComponent{
  index: string;
  name: string;
  vote: string;
  build(){
    Row() {
      if (parseInt(this.index) <= 3) {
        Column(){
          Row(){
            Text(this.index)
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor(Color.White)
          }
          .width(24)
          .height(24)
          .borderRadius(12)
          .backgroundColor('#007dff')
          .justifyContent(FlexAlign.Center)
        }
        .width('30%')
        .alignItems(HorizontalAlign.Start)

      } else {
        Column(){
          Text(this.index)
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .width(24)
            .height(24)
            .textAlign(TextAlign.Center)
        }
        .width('30%')
        .alignItems(HorizontalAlign.Start)

      }


      Text(this.name)
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .width('50%')

      Text(this.vote)
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .width('20%')
    }
  }
}