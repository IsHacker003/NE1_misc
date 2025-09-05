.class Lcom/android/settings/datausage/DataUsageList$5;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 525
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    .line 526
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageList;->access$100(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 535
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageList;->access$400(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object p2

    iget-wide p3, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v0, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    invoke-virtual {p2, p3, p4, v0, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setVisibleRange(JJ)V

    .line 537
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageList;->access$500(Lcom/android/settings/datausage/DataUsageList;)V

    .line 538
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 543
    return-void
.end method
