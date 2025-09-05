.class Lcom/android/settings/DeviceAdminAdd$2;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$2;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$2;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/settings/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$2;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$2;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    nop

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$2;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$2;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd$2;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 314
    return-void
.end method
