.class Lcom/android/settings/MasterClear$4;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/settings/MasterClear$4;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 336
    instance-of p2, p1, Landroid/widget/ScrollView;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/MasterClear$4;->this$0:Lcom/android/settings/MasterClear;

    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p2, p1}, Lcom/android/settings/MasterClear;->hasReachedBottom(Landroid/widget/ScrollView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 337
    iget-object p1, p0, Lcom/android/settings/MasterClear$4;->this$0:Lcom/android/settings/MasterClear;

    iget-object p1, p1, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    iget-object p1, p0, Lcom/android/settings/MasterClear$4;->this$0:Lcom/android/settings/MasterClear;

    iget-object p1, p1, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 340
    :cond_0
    return-void
.end method
