.class Lcom/android/settings/fih/apn/APNSelectionActivity$3;
.super Ljava/lang/Object;
.source "APNSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fih/apn/APNSelectionActivity;->UiChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fih/apn/APNSelectionActivity;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/fih/apn/APNSelectionActivity;Landroid/view/View;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity$3;->this$0:Lcom/android/settings/fih/apn/APNSelectionActivity;

    iput-object p2, p0, Lcom/android/settings/fih/apn/APNSelectionActivity$3;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 332
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 333
    invoke-static {}, Lcom/android/settings/fih/apn/APNSelectionActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSystemUiVisibilityChange:"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p1, p0, Lcom/android/settings/fih/apn/APNSelectionActivity$3;->val$decorView:Landroid/view/View;

    const/16 v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 342
    :cond_0
    return-void
.end method
